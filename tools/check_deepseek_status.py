#!/usr/bin/env python3
"""Check DeepSeek API key status"""

import urllib.request
import json
import ssl

API_KEY = 'sk-61422c74411549248f23b4656d4152ae'
API_URL = 'https://api.deepseek.com/v1/chat/completions'

def test_api():
    print("Checking DeepSeek API key...")
    print(f"Key: {API_KEY[:15]}...{API_KEY[-4:]}")
    print()

    data = json.dumps({
        'model': 'deepseek-chat',
        'messages': [{'role': 'user', 'content': 'Say OK'}],
        'max_tokens': 5
    }).encode('utf-8')

    req = urllib.request.Request(
        API_URL,
        data=data,
        headers={
            'Content-Type': 'application/json',
            'Authorization': f'Bearer {API_KEY}'
        },
        method='POST'
    )

    ctx = ssl.create_default_context()

    try:
        with urllib.request.urlopen(req, context=ctx, timeout=30) as response:
            print(f"Status: {response.status} OK")
            print("API key is working!")
            return True
    except urllib.error.HTTPError as e:
        print(f"Status: {e.code} {e.reason}")

        if e.code == 401:
            print("\n[ERROR] API key is invalid or revoked.")
            print("You need to generate a new API key.")
        elif e.code == 402:
            print("\n[ERROR] Payment Required - Out of credits!")
            print("Your DeepSeek account balance is $0.00")
            print("\nTO FIX THIS:")
            print("1. Go to https://platform.deepseek.com/")
            print("2. Sign in to your account")
            print("3. Click 'Billing' or 'Add Credits'")
            print("4. Add a payment method and purchase credits")
            print("   (Minimum purchase is usually $5-10)")
            print("\nALTERNATIVE:")
            print("- Generate a new API key from a different DeepSeek account")
            print("- Then run: python update_deepseek_key.py <new_key>")
        elif e.code == 429:
            print("\n[WAIT] Rate limited - too many requests")
            print("Wait 30 seconds and try again")
        else:
            print(f"\n[ERROR] Unexpected error: {e.code}")
            try:
                error_body = e.read().decode('utf-8')
                print(f"Details: {error_body[:500]}")
            except:
                pass
        return False
    except Exception as e:
        print(f"\n[ERROR] {type(e).__name__}: {e}")
        return False

if __name__ == '__main__':
    test_api()
    print()
    input("Press Enter to exit...")
