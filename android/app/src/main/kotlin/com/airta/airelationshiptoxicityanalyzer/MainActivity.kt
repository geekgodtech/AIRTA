package com.airta.airelationshiptoxicityanalyzer

import android.provider.ContactsContract
import android.provider.Telephony
import android.database.Cursor
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.json.JSONArray
import org.json.JSONObject
import android.os.Handler
import android.os.Looper

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.toxicity_analyzer/contacts"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getContactName" -> {
                    val phoneNumber = call.argument<String>("phoneNumber")
                    if (phoneNumber != null) {
                        val contactName = getContactName(phoneNumber)
                        result.success(contactName)
                    } else {
                        result.error("INVALID_ARGUMENT", "Phone number is required", null)
                    }
                }
                "getMmsMessages" -> {
                    val address = call.argument<String>("address")
                    if (address != null) {
                        // Run MMS query on background thread with timeout
                        val thread = Thread {
                            try {
                                val mmsMessages = getMmsMessages(address)
                                Handler(Looper.getMainLooper()).post {
                                    result.success(mmsMessages)
                                }
                            } catch (e: Exception) {
                                Handler(Looper.getMainLooper()).post {
                                    result.success("[]") // Return empty on error
                                }
                            }
                        }
                        thread.start()
                        // Timeout after 120 seconds for large MMS threads
                        Handler(Looper.getMainLooper()).postDelayed({
                            if (thread.isAlive) {
                                thread.interrupt()
                                result.success("[]") // Return empty on timeout
                            }
                        }, 120000)
                    } else {
                        result.error("INVALID_ARGUMENT", "Address is required", null)
                    }
                }
                "getSmsMessages" -> {
                    val address = call.argument<String>("address")
                    if (address != null) {
                        // Run SMS query on background thread with timeout
                        val thread = Thread {
                            try {
                                val smsMessages = getSmsMessages(address)
                                Handler(Looper.getMainLooper()).post {
                                    result.success(smsMessages)
                                }
                            } catch (e: Exception) {
                                Handler(Looper.getMainLooper()).post {
                                    result.success("[]") // Return empty on error
                                }
                            }
                        }
                        thread.start()
                        // Timeout after 10 seconds
                        Handler(Looper.getMainLooper()).postDelayed({
                            if (thread.isAlive) {
                                thread.interrupt()
                                result.success("[]") // Return empty on timeout
                            }
                        }, 10000)
                    } else {
                        result.error("INVALID_ARGUMENT", "Address is required", null)
                    }
                }
                "getAllMessages" -> {
                    val address = call.argument<String>("address")
                    if (address != null) {
                        // Run optimized query on background thread
                        val thread = Thread {
                            try {
                                val messages = getAllMessages(address)
                                Handler(Looper.getMainLooper()).post {
                                    result.success(messages)
                                }
                            } catch (e: Exception) {
                                Handler(Looper.getMainLooper()).post {
                                    result.success("[]") // Return empty on error
                                }
                            }
                        }
                        thread.start()
                        // Timeout after 15 seconds
                        Handler(Looper.getMainLooper()).postDelayed({
                            if (thread.isAlive) {
                                thread.interrupt()
                                result.success("[]") // Return empty on timeout
                            }
                        }, 15000)
                    } else {
                        result.error("INVALID_ARGUMENT", "Address is required", null)
                    }
                }
                "countMmsMessages" -> {
                    // Run MMS count on background thread
                    Thread {
                        try {
                            val count = countMmsMessages()
                            Handler(Looper.getMainLooper()).post {
                                result.success(count.toString())
                            }
                        } catch (e: Exception) {
                            Handler(Looper.getMainLooper()).post {
                                result.success("0")
                            }
                        }
                    }.start()
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun getContactName(phoneNumber: String): String? {
        try {
            // Normalize phone number for comparison (remove spaces, dashes, etc.)
            val normalizedInput = phoneNumber.replace(Regex("[\\s\\-\\(\\)\\+]"), "")
            val searchLast10 = if (normalizedInput.length >= 10) {
                normalizedInput.substring(normalizedInput.length - 10)
            } else {
                normalizedInput
            }

            val uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI
            val projection = arrayOf(
                ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME,
                ContactsContract.CommonDataKinds.Phone.NUMBER
            )

            val cursor: Cursor? = contentResolver.query(uri, projection, null, null, null)
            cursor?.use {
                while (it.moveToNext()) {
                    val name = it.getString(it.getColumnIndexOrThrow(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME))
                    val number = it.getString(it.getColumnIndexOrThrow(ContactsContract.CommonDataKinds.Phone.NUMBER))
                    
                    // Normalize contact number
                    val normalizedContact = number.replace(Regex("[\\s\\-\\(\\)\\+]"), "")
                    val contactLast10 = if (normalizedContact.length >= 10) {
                        normalizedContact.substring(normalizedContact.length - 10)
                    } else {
                        normalizedContact
                    }
                    
                    // Compare last 10 digits
                    if (searchLast10 == contactLast10) {
                        return name
                    }
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }

    private fun getMmsMessages(address: String): String {
        val messages = JSONArray()
        val normalizedAddress = normalizePhoneNumber(address)
        
        android.util.Log.d("SMS_DEBUG", "getMmsMessages called for address: $address (normalized: $normalizedAddress)")
        
        try {
            // Get all thread_ids for this address (combines threads with like numbers)
            val threadIds = getThreadIdsForAddress(address)
            if (threadIds.isEmpty()) {
                android.util.Log.d("SMS_DEBUG", "No threads found for address: $address")
                return messages.toString()
            }
            
            android.util.Log.d("SMS_DEBUG", "Found ${threadIds.size} thread_ids for address: $address")
            
            // Query MMS messages for all thread_ids
            val mmsUri = Uri.parse("content://mms")
            val mmsProjection = arrayOf(
                Telephony.Mms._ID,
                Telephony.Mms.DATE,
                Telephony.Mms.THREAD_ID,
                "msg_box"
            )
            
            // Build selection for multiple thread_ids
            val threadIdsString = threadIds.joinToString(",")
            val selection = "thread_id IN ($threadIdsString)"
            
            // Limit to 5000 most recent MMS messages to balance performance and coverage
            val mmsCursor: Cursor? = contentResolver.query(
                mmsUri,
                mmsProjection,
                selection,
                null,
                Telephony.Mms.DATE + " DESC LIMIT 5000"
            )
            
            android.util.Log.d("SMS_DEBUG", "MMS cursor: ${mmsCursor?.count ?: 0} messages")
            
            mmsCursor?.use { cursor ->
                var count = 0
                while (cursor.moveToNext()) {
                    val mmsId = cursor.getLong(cursor.getColumnIndexOrThrow(Telephony.Mms._ID))
                    val dateRaw = cursor.getLong(cursor.getColumnIndexOrThrow(Telephony.Mms.DATE))
                    val threadId = cursor.getLong(cursor.getColumnIndexOrThrow(Telephony.Mms.THREAD_ID))
                    val msgBox = cursor.getInt(cursor.getColumnIndexOrThrow("msg_box"))
                    
                    // MMS dates might be in seconds or milliseconds - try both
                    // If dateRaw is small (< 10000000000), it's likely in seconds
                    val date = if (dateRaw < 10000000000L) dateRaw * 1000 else dateRaw
                    
                    // Log newest 10 MMS messages with dates
                    if (count < 10) {
                        val dateStr = java.util.Date(date).toString()
                        android.util.Log.d("SMS_DEBUG", "MMS #$count: thread_id=$threadId, raw_date=$dateRaw, converted_date=$dateStr, msg_box=$msgBox")
                    }
                    count++
                    
                    // Get text from MMS parts
                    val text = getMmsText(mmsId)
                    
                    // Determine if sent or received
                    // msg_box values: 1=inbox, 2=sent, 3=draft, 4=outbox, 5=failed
                    val type = if (msgBox == 2 || msgBox == 4) "sent" else "inbox"
                    
                    val messageObj = JSONObject()
                    messageObj.put("address", address)
                    messageObj.put("body", text)
                    messageObj.put("date", date)
                    messageObj.put("type", type)
                    messages.put(messageObj)
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("SMS_DEBUG", "Error in getMmsMessages", e)
            e.printStackTrace()
        }
        
        android.util.Log.d("SMS_DEBUG", "Returning ${messages.length()} total messages")
        return messages.toString()
    }

    private fun getSmsMessages(address: String): String {
        val messages = JSONArray()
        val normalizedAddress = normalizePhoneNumber(address)
        
        android.util.Log.d("SMS_DEBUG", "getSmsMessages called for address: $address (normalized: $normalizedAddress)")
        
        try {
            // Get all thread_ids for this address (combines threads with like numbers)
            val threadIds = getThreadIdsForAddress(address)
            if (threadIds.isEmpty()) {
                android.util.Log.d("SMS_DEBUG", "No threads found for address: $address")
                return messages.toString()
            }
            
            android.util.Log.d("SMS_DEBUG", "Found ${threadIds.size} thread_ids for address: $address")
            
            // Query SMS messages for all thread_ids
            val smsUri = Telephony.Sms.CONTENT_URI
            val smsProjection = arrayOf(
                Telephony.Sms._ID,
                Telephony.Sms.ADDRESS,
                Telephony.Sms.BODY,
                Telephony.Sms.DATE,
                Telephony.Sms.TYPE
            )
            
            // Build selection for multiple thread_ids
            val threadIdsString = threadIds.joinToString(",")
            val selection = "thread_id IN ($threadIdsString)"
            
            val smsCursor: Cursor? = contentResolver.query(
                smsUri,
                smsProjection,
                selection,
                null,
                Telephony.Sms.DATE + " ASC"
            )
            
            android.util.Log.d("SMS_DEBUG", "SMS cursor: ${smsCursor?.count ?: 0} messages")
            
            smsCursor?.use { cursor ->
                while (cursor.moveToNext()) {
                    val smsAddress = cursor.getString(cursor.getColumnIndexOrThrow(Telephony.Sms.ADDRESS))
                    val body = cursor.getString(cursor.getColumnIndexOrThrow(Telephony.Sms.BODY))
                    val date = cursor.getLong(cursor.getColumnIndexOrThrow(Telephony.Sms.DATE))
                    val type = cursor.getInt(cursor.getColumnIndexOrThrow(Telephony.Sms.TYPE))
                    
                    // Determine if sent or received
                    // type values: 1=inbox, 2=sent, 3=draft, 4=outbox, 5=failed, 6=queued
                    val messageType = if (type == 2 || type == 4 || type == 6) "sent" else "inbox"
                    
                    val messageObj = JSONObject()
                    messageObj.put("address", smsAddress)
                    messageObj.put("body", body)
                    messageObj.put("date", date)
                    messageObj.put("type", messageType)
                    messages.put(messageObj)
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("SMS_DEBUG", "Error in getSmsMessages", e)
            e.printStackTrace()
        }
        
        android.util.Log.d("SMS_DEBUG", "Returning ${messages.length()} total messages")
        return messages.toString()
    }

    private fun countMmsMessages(): Int {
        var totalCount = 0
        
        try {
            // Count MMS inbox
            val inboxUri = Uri.parse("content://mms/inbox")
            val inboxCursor: Cursor? = contentResolver.query(
                inboxUri,
                arrayOf(Telephony.Mms._ID),
                null,
                null,
                null
            )
            inboxCursor?.use {
                totalCount += it.count
            }
            
            // Count MMS sent
            val sentUri = Uri.parse("content://mms/sent")
            val sentCursor: Cursor? = contentResolver.query(
                sentUri,
                arrayOf(Telephony.Mms._ID),
                null,
                null,
                null
            )
            sentCursor?.use {
                totalCount += it.count
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        
        return totalCount
    }

    private fun getAllMessages(address: String): String {
        val messages = JSONArray()
        val normalizedAddress = normalizePhoneNumber(address)
        
        android.util.Log.d("SMS_DEBUG", "getAllMessages called for address: $address (normalized: $normalizedAddress)")
        
        try {
            // Get all thread_ids for this address (combines threads with like numbers)
            val threadIds = getThreadIdsForAddress(address)
            if (threadIds.isEmpty()) {
                android.util.Log.d("SMS_DEBUG", "No threads found for address: $address")
                return messages.toString()
            }
            
            android.util.Log.d("SMS_DEBUG", "Found ${threadIds.size} thread_ids for address: $address")
            
            // Query MMS messages for all thread_ids
            val mmsUri = Uri.parse("content://mms")
            val mmsProjection = arrayOf(
                Telephony.Mms._ID,
                Telephony.Mms.DATE,
                Telephony.Mms.THREAD_ID,
                "msg_box"
            )
            
            // Build selection for multiple thread_ids
            val threadIdsString = threadIds.joinToString(",")
            val selection = "thread_id IN ($threadIdsString)"
            
            // Limit to 5000 most recent MMS messages to balance performance and coverage
            val mmsCursor: Cursor? = contentResolver.query(
                mmsUri,
                mmsProjection,
                selection,
                null,
                Telephony.Mms.DATE + " DESC LIMIT 5000"
            )
            
            android.util.Log.d("SMS_DEBUG", "MMS cursor: ${mmsCursor?.count ?: 0} messages")
            
            mmsCursor?.use { cursor ->
                var count = 0
                while (cursor.moveToNext() && count < 5000) {
                    val mmsId = cursor.getLong(cursor.getColumnIndexOrThrow(Telephony.Mms._ID))
                    val dateRaw = cursor.getLong(cursor.getColumnIndexOrThrow(Telephony.Mms.DATE))
                    val msgBox = cursor.getInt(cursor.getColumnIndexOrThrow("msg_box"))
                    
                    // MMS DATE is stored in seconds, convert to milliseconds
                    val date = if (dateRaw < 10000000000L) dateRaw * 1000 else dateRaw
                    
                    // Get text from MMS parts
                    val text = getMmsText(mmsId)
                    
                    // Determine if sent or received
                    // msg_box values: 1=inbox, 2=sent, 3=draft, 4=outbox, 5=failed
                    val type = if (msgBox == 2 || msgBox == 4) "sent" else "inbox"
                    
                    val messageObj = JSONObject()
                    messageObj.put("address", address)
                    messageObj.put("body", text)
                    messageObj.put("date", date)
                    messageObj.put("type", type)
                    messageObj.put("messageType", "MMS")
                    messages.put(messageObj)
                    count++
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("SMS_DEBUG", "Error in getAllMessages", e)
            e.printStackTrace()
        }
        
        android.util.Log.d("SMS_DEBUG", "Returning ${messages.length()} total messages")
        return messages.toString()
    }

    private fun getThreadAddresses(threadId: Long): List<String> {
        val addresses = mutableSetOf<String>()
        
        try {
            // Query SMS messages in this thread to get addresses
            val smsUri = Telephony.Sms.CONTENT_URI
            val smsCursor: Cursor? = contentResolver.query(
                smsUri,
                arrayOf(Telephony.Sms.ADDRESS),
                "thread_id = ?",
                arrayOf(threadId.toString()),
                null
            )
            smsCursor?.use {
                while (it.moveToNext()) {
                    val addr = it.getString(it.getColumnIndexOrThrow(Telephony.Sms.ADDRESS))
                    if (addr != null) {
                        addresses.add(addr)
                    }
                }
            }
            
            // Query MMS messages in this thread to get addresses
            val mmsUri = Uri.parse("content://mms")
            val mmsCursor: Cursor? = contentResolver.query(
                mmsUri,
                arrayOf("_id"),
                "thread_id = ?",
                arrayOf(threadId.toString()),
                null
            )
            mmsCursor?.use {
                while (it.moveToNext()) {
                    val mmsId = it.getLong(it.getColumnIndexOrThrow("_id"))
                    val mmsAddress = getMmsAddress(mmsId, mmsUri)
                    if (mmsAddress != null) {
                        addresses.add(mmsAddress)
                    }
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("SMS_DEBUG", "Error getting thread addresses", e)
        }
        
        return addresses.toList()
    }

    private fun getThreadMessages(threadId: Long): List<JSONObject> {
        val messages = mutableListOf<JSONObject>()
        
        android.util.Log.d("SMS_DEBUG", "getThreadMessages called for thread $threadId")
        
        try {
            // Query SMS messages in thread
            val smsUri = Telephony.Sms.CONTENT_URI
            android.util.Log.d("SMS_DEBUG", "Querying SMS for thread $threadId")
            
            val smsCursor: Cursor? = contentResolver.query(
                smsUri,
                arrayOf(
                    Telephony.Sms._ID,
                    Telephony.Sms.BODY,
                    Telephony.Sms.DATE,
                    Telephony.Sms.TYPE,
                    Telephony.Sms.ADDRESS
                ),
                "thread_id = ?",
                arrayOf(threadId.toString()),
                Telephony.Sms.DATE + " ASC"
            )
            
            android.util.Log.d("SMS_DEBUG", "SMS cursor: ${smsCursor?.count ?: 0} messages")
            
            smsCursor?.use {
                while (it.moveToNext()) {
                    val body = it.getString(it.getColumnIndexOrThrow(Telephony.Sms.BODY))
                    val date = it.getLong(it.getColumnIndexOrThrow(Telephony.Sms.DATE))
                    val type = it.getInt(it.getColumnIndexOrThrow(Telephony.Sms.TYPE))
                    val addr = it.getString(it.getColumnIndexOrThrow(Telephony.Sms.ADDRESS))
                    
                    val msg = JSONObject()
                    msg.put("address", addr)
                    msg.put("body", body ?: "")
                    msg.put("date", date)
                    msg.put("type", if (type == Telephony.Sms.MESSAGE_TYPE_SENT) "sent" else "inbox")
                    msg.put("messageType", "SMS")
                    messages.add(msg)
                }
            }
            
            // Query MMS messages in thread - limit to 5000 most recent
            val mmsUri = Telephony.Mms.CONTENT_URI
            android.util.Log.d("SMS_DEBUG", "Querying MMS for thread $threadId")
            
            val mmsCursor: Cursor? = contentResolver.query(
                mmsUri,
                arrayOf(
                    Telephony.Mms._ID,
                    Telephony.Mms.DATE
                ),
                "thread_id = ?",
                arrayOf(threadId.toString()),
                Telephony.Mms.DATE + " DESC LIMIT 5000"
            )
            
            android.util.Log.d("SMS_DEBUG", "MMS cursor: ${mmsCursor?.count ?: 0} messages")
            
            mmsCursor?.use {
                var count = 0
                while (it.moveToNext() && count < 5000) {
                    val mmsId = it.getLong(it.getColumnIndexOrThrow(Telephony.Mms._ID))
                    val dateRaw = it.getLong(it.getColumnIndexOrThrow(Telephony.Mms.DATE))
                    // MMS DATE is stored in seconds, convert to milliseconds
                    val date = if (dateRaw < 10000000000L) dateRaw * 1000 else dateRaw
                    val text = getMmsText(mmsId)
                    val addr = getMmsAddress(mmsId, mmsUri)
                    
                    android.util.Log.d("SMS_DEBUG", "MMS message: id=$mmsId, date=$date, addr=$addr, text=$text")
                    
                    val msg = JSONObject()
                    msg.put("address", addr ?: "")
                    msg.put("body", text ?: "")
                    msg.put("date", date)
                    msg.put("type", "inbox") // Simplified for now
                    msg.put("messageType", "MMS")
                    messages.add(msg)
                    count++
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("SMS_DEBUG", "Error in getThreadMessages", e)
            e.printStackTrace()
        }
        
        android.util.Log.d("SMS_DEBUG", "Returning ${messages.size} messages from thread $threadId")
        return messages
    }
    
    private fun getThreadIdsForAddress(address: String): List<Long> {
        val threadIds = mutableSetOf<Long>()
        
        android.util.Log.d("SMS_DEBUG", "=== THREAD ID DEBUG START ===")
        android.util.Log.d("SMS_DEBUG", "Searching for thread_ids for address: $address")
        
        try {
            val uri = Uri.parse("content://mms-sms/canonical-addresses")
            val projection = arrayOf("_id")
            
            // Try multiple phone number formats
            val normalized = normalizePhoneNumber(address)
            val addressVariations = listOf(
                address, // Original
                normalized, // Normalized
                "+1$normalized", // With country code
                if (normalized.startsWith("1")) normalized.substring(1) else normalized, // Without leading 1
                if (normalized.length >= 10) normalized.substring(normalized.length - 10) else normalized, // Last 10 digits
                if (normalized.length >= 7) normalized.substring(normalized.length - 7) else normalized // Last 7 digits
            )
            
            android.util.Log.d("SMS_DEBUG", "Phone number variations to try: $addressVariations")
            
            for (addr in addressVariations) {
                val selection = "address = ?"
                val selectionArgs = arrayOf(addr)
                
                val cursor: Cursor? = contentResolver.query(uri, projection, selection, selectionArgs, null)
                cursor?.use {
                    while (it.moveToNext()) {
                        val threadId = it.getLong(it.getColumnIndexOrThrow("_id"))
                        threadIds.add(threadId)
                        android.util.Log.d("SMS_DEBUG", "Found thread_id $threadId for address variation: $addr")
                    }
                }
            }
            
            android.util.Log.d("SMS_DEBUG", "Thread IDs found by phone number: $threadIds")
            
            // Also try to find threads by contact name
            val contactName = getContactName(address)
            android.util.Log.d("SMS_DEBUG", "Contact name for $address: $contactName")
            
            if (contactName != null) {
                android.util.Log.d("SMS_DEBUG", "Found contact name: $contactName, searching for all threads with this contact")
                
                // Query all conversations to find threads with this contact name
                // Note: recipient_ids column doesn't exist in conversations view, so we can't use it
                // We'll query canonical-addresses directly instead
                val canonicalUri = Uri.parse("content://mms-sms/canonical-addresses")
                val canonicalCursor: Cursor? = contentResolver.query(canonicalUri, null, null, null, null)
                var totalAddresses = 0
                var matchingAddresses = 0
                
                canonicalCursor?.use {
                    // Get actual column names
                    val columnNames = it.columnNames.toList()
                    android.util.Log.d("SMS_DEBUG", "Canonical-addresses available columns: $columnNames")
                    
                    val idColumn = if (columnNames.contains("_id")) "_id" else if (columnNames.contains("thread_id")) "thread_id" else null
                    val addressColumn = if (columnNames.contains("address")) "address" else null
                    
                    if (idColumn == null || addressColumn == null) {
                        android.util.Log.e("SMS_DEBUG", "Required columns not found in canonical-addresses cursor")
                        return@use
                    }
                    
                    while (it.moveToNext()) {
                        totalAddresses++
                        val canonicalId = it.getLong(it.getColumnIndexOrThrow(idColumn))
                        val addr = it.getString(it.getColumnIndexOrThrow(addressColumn))
                        
                        val addrContactName = getContactName(addr)
                        if (addrContactName == contactName) {
                            matchingAddresses++
                            android.util.Log.d("SMS_DEBUG", "Found matching address: $addr (canonical_id: $canonicalId, contact: $addrContactName)")
                            
                            // Now find threads that use this canonical ID
                            // Query SMS threads
                            val smsUri = Uri.parse("content://sms")
                            val smsProjection = arrayOf("thread_id")
                            val smsSelection = "address = ?"
                            val smsSelectionArgs = arrayOf(addr)
                            val smsCursor: Cursor? = contentResolver.query(smsUri, smsProjection, smsSelection, smsSelectionArgs, null)
                            smsCursor?.use { sms ->
                                while (sms.moveToNext()) {
                                    val threadId = sms.getLong(sms.getColumnIndexOrThrow("thread_id"))
                                    threadIds.add(threadId)
                                    android.util.Log.d("SMS_DEBUG", "Found SMS thread_id $threadId for address: $addr")
                                }
                            }
                            
                            // Query MMS threads
                            val mmsUri = Uri.parse("content://mms")
                            val mmsProjection = arrayOf("_id", "thread_id")
                            val mmsCursor: Cursor? = contentResolver.query(mmsUri, mmsProjection, null, null, null)
                            mmsCursor?.use { mms ->
                                while (mms.moveToNext()) {
                                    val mmsThreadId = mms.getLong(mms.getColumnIndexOrThrow("thread_id"))
                                    val mmsId = mms.getLong(mms.getColumnIndexOrThrow("_id"))
                                    
                                    // Check if this MMS message is from/to this address
                                    val mmsAddr = getMmsAddress(mmsId, mmsUri)
                                    if (mmsAddr != null) {
                                        val mmsAddrContact = getContactName(mmsAddr)
                                        if (mmsAddrContact == contactName) {
                                            threadIds.add(mmsThreadId)
                                            android.util.Log.d("SMS_DEBUG", "Found MMS thread_id $mmsThreadId for address: $mmsAddr")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                android.util.Log.d("SMS_DEBUG", "Total addresses scanned: $totalAddresses, matching addresses: $matchingAddresses")
            }
        } catch (e: Exception) {
            android.util.Log.e("SMS_DEBUG", "Error getting thread_ids for address: $address", e)
        }
        
        android.util.Log.d("SMS_DEBUG", "Total thread_ids found for $address: ${threadIds.size}")
        android.util.Log.d("SMS_DEBUG", "Final thread IDs: $threadIds")
        android.util.Log.d("SMS_DEBUG", "=== THREAD ID DEBUG END ===")
        return threadIds.toList()
    }
    
    private fun getAddressFromCanonicalId(canonicalId: Long): String? {
        try {
            val uri = Uri.parse("content://mms-sms/canonical-addresses")
            val projection = arrayOf("address")
            val selection = "_id = ?"
            val selectionArgs = arrayOf(canonicalId.toString())
            
            val cursor: Cursor? = contentResolver.query(uri, projection, selection, selectionArgs, null)
            cursor?.use {
                if (it.moveToNext()) {
                    return it.getString(it.getColumnIndexOrThrow("address"))
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("SMS_DEBUG", "Error getting address from canonical ID: $canonicalId", e)
        }
        return null
    }
    
    private fun getMmsAddress(mmsId: Long, mmsUri: Uri): String? {
        val addrUri = Uri.parse("content://mms/$mmsId/addr")
        val projection = arrayOf(Telephony.Mms.Addr.ADDRESS, Telephony.Mms.Addr.TYPE)
        
        val cursor: Cursor? = contentResolver.query(addrUri, projection, null, null, null)
        cursor?.use {
            while (it.moveToNext()) {
                val type = it.getInt(it.getColumnIndexOrThrow(Telephony.Mms.Addr.TYPE))
                // TYPE_PNUM = 129 (phone number), TYPE_EMAIL = 151
                if (type == 129) {
                    return it.getString(it.getColumnIndexOrThrow(Telephony.Mms.Addr.ADDRESS))
                }
            }
        }
        return null
    }
    
    private fun getMmsText(mmsId: Long): String {
        val partUri = Uri.parse("content://mms/$mmsId/part")
        val projection = arrayOf("_id", "ct", "text", "_data")
        
        val cursor: Cursor? = contentResolver.query(partUri, projection, null, null, null)
        cursor?.use {
            while (it.moveToNext()) {
                val contentType = it.getString(it.getColumnIndexOrThrow("ct"))
                val text = it.getString(it.getColumnIndexOrThrow("text"))
                val data = it.getString(it.getColumnIndexOrThrow("_data"))
                
                // Try text/plain content type first
                if (contentType == "text/plain" && text != null) {
                    return text
                }
                
                // Try to extract text from data URI
                if (data != null) {
                    try {
                        val dataUri = Uri.parse(data)
                        val dataCursor: Cursor? = contentResolver.query(dataUri, null, null, null, null)
                        dataCursor?.use { dc ->
                            if (dc.moveToFirst()) {
                                val extractedText = dc.getString(0)
                                if (extractedText != null) {
                                    return extractedText
                                }
                            }
                        }
                    } catch (e: Exception) {
                        // Ignore errors reading data URI
                    }
                }
            }
        }
        return ""
    }
    
    private fun normalizePhoneNumber(phoneNumber: String): String {
        return phoneNumber.replace(Regex("[^0-9]"), "")
    }
}
