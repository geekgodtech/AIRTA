# Keep Flutter entry point
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class io.flutter.embedding.** { *; }

# Keep MainActivity
-keep class com.airta.airelationshiptoxicityanalyzer.MainActivity { *; }
-keep class com.airta.airelationshiptoxicityanalyzer.** { *; }

# Keep Firebase classes
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**

# Keep in-app purchase classes
-keep class com.android.billingclient.** { *; }
-dontwarn com.android.billingclient.**

# Keep ML Kit classes
-keep class com.google.mlkit.** { *; }
-dontwarn com.google.mlkit.**

# Keep text recognition classes
-keep class com.google.android.gms.internal.mlkit_vision_text_common.** { *; }
-dontwarn com.google.android.gms.internal.mlkit_vision_text_common.**

# Keep telephony plugin
-keep class com.shounakmulay.telephony.** { *; }
-dontwarn com.shounakmulay.telephony.**

# General Android keep rules
-keepattributes *Annotation*
-keepattributes SourceFile,LineNumberTable
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver

# Suppress warnings for missing Google Play Core classes (Flutter deferred components)
-dontwarn com.google.android.play.core.**
-dontwarn io.flutter.embedding.android.FlutterPlayStoreSplitApplication
-dontwarn io.flutter.embedding.engine.deferredcomponents.**
