#!/usr/bin/env python3
"""Test DeepSeek API key to diagnose 402 errors"""

import requests
import json

API_KEY = 'sk-61422c74411549248f23b4656d4152ae'
API_URL = 'https://api.deepseek.com/v1/chat/completions'

def test_api_key():
    """Test the DeepSeek API key with a simple request"""
    print("Testing DeepSeek API key...")
    print(f"Key: {API_KEY[:10]}...{API_KEY[-4:]}")
    print()

    headers = {
        'Content-Type': 'application/json',
        'Authorization': f'Bearer {API_KEY}'
    }

    data = {
        'model': 'deepseek-chat',
        'messages': [{'role': 'user', 'content': 'Hello, this is a test. Reply with "OK".'}],
        'max_tokens': 10,
        'temperature': 0.3
    }

    try:
        response = requests.post(API_URL, headers=headers, json=data, timeout=30)
        print(f"Status Code: {response.status_code}")

        if response.status_code == 200:
            result = response.json()
            content = result['choices'][0]['message']['content']
            print(f"✓ API key is working!")
            print(f"  Response: {content}")
            return True
        elif response.status_code == 401:
            print(f"✗ API key is invalid (401 Unauthorized)")
            print(f"  The key may be incorrect or revoked.")
            return False
        elif response.status_code == 402:
            print(f"✗ Payment Required (402)")
            print(f"  Your DeepSeek account has run out of credits.")
            print(f"  Go to https://platform.deepseek.com/ to add credits.")
            return False
        elif response.status_code == 429:
            print(f"✗ Rate Limited (429)")
            print(f"  Too many requests. Wait a moment and try again.")
            return False
        else:
            print(f"✗ Unexpected error: {response.status_code}")
            try:
                error_data = response.json()
                print(f"  Details: {json.dumps(error_data, indent=2)}")
            except:
                print(f"  Response: {response.text[:500]}")
            return False

    except requests.exceptions.Timeout:
        print(f"✗ Request timed out")
        print(f"  DeepSeek API may be slow or unavailable.")
        return False
    except requests.exceptions.ConnectionError:
        print(f"✗ Connection error")
        print(f"  Check your internet connection.")
        return False
    except Exception as e:
        print(f"✗ Error: {e}")
        return False

def check_balance_info():
    """Provide information about checking balance"""
    print()
    print("=" * 60)
    print("HOW TO CHECK YOUR DEEPSEEK BALANCE:")
    print("=" * 60)
    print()
    print("1. Go to https://platform.deepseek.com/")
    print("2. Sign in with your account")
    print("3. Click on 'API' in the left sidebar")
    print("4. Look for 'Balance' or 'Usage' section")
    print()
    print("If your balance is $0.00, you need to add credits:")
    print("  - Click 'Add Credits' or 'Billing'")
    print("  - Add a payment method")
    print("  - Purchase credits (minimum is usually $5-10)")
    print()
    print("HOW TO GET A NEW API KEY (if needed):")
    print("  - In the DeepSeek platform, go to API Keys")
    print("  - Click 'Create New Key'")
    print("  - Copy the new key and use it to update your files")
    print()

if __name__ == '__main__':
    success = test_api_key()
    if not success:
        check_balance_info()
    print()
    input("Press Enter to exit...")
