import asyncio
import os
import subprocess
from playwright.async_api import async_playwright

screenshot_sizes = [
    # Apple iOS
    {"width": 1290, "height": 2796, "name": "iPhone_6.7in_ProMax", "platform": "Apple"},
    {"width": 1242, "height": 2688, "name": "iPhone_6.5in", "platform": "Apple"},
    {"width": 1242, "height": 2208, "name": "iPhone_5.5in", "platform": "Apple"},
    {"width": 1170, "height": 2532, "name": "iPhone_6.1in", "platform": "Apple"},
    {"width": 750, "height": 1334, "name": "iPhone_4.7in_SE", "platform": "Apple"},
    # Apple iPad
    {"width": 2048, "height": 2732, "name": "iPad_Pro_12.9in", "platform": "Apple"},
    {"width": 1668, "height": 2388, "name": "iPad_Pro_11in", "platform": "Apple"},
    {"width": 1620, "height": 2160, "name": "iPad_10.2in", "platform": "Apple"},
    # Android
    {"width": 1080, "height": 1920, "name": "Android_Phone_1080p", "platform": "Android"},
    {"width": 1440, "height": 2560, "name": "Android_Phone_QHD", "platform": "Android"},
    {"width": 1200, "height": 1920, "name": "Android_Tablet_7in", "platform": "Android"},
    {"width": 1600, "height": 2560, "name": "Android_Tablet_10in", "platform": "Android"},
    {"width": 2048, "height": 2732, "name": "Android_Tablet_Large", "platform": "Android"},
]

languages = [
    {"code": "en", "name": "English"},
    {"code": "es", "name": "Spanish"},
    {"code": "fr", "name": "French"},
    {"code": "de", "name": "German"},
    {"code": "it", "name": "Italian"},
    {"code": "pt", "name": "Portuguese"},
    {"code": "nl", "name": "Dutch"},
    {"code": "pl", "name": "Polish"},
    {"code": "ru", "name": "Russian"},
    {"code": "tr", "name": "Turkish"},
    {"code": "uk", "name": "Ukrainian"},
    {"code": "ja", "name": "Japanese"},
    {"code": "ko", "name": "Korean"},
    {"code": "hi", "name": "Hindi"},
    {"code": "ar", "name": "Arabic"},
    {"code": "zh", "name": "Chinese"},
]

async def take_screenshots():
    # Start HTTP server
    web_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "build", "web")
    
    print(f"Starting HTTP server in: {web_dir}")
    server_process = subprocess.Popen(
        ["python", "-m", "http.server", "8000"],
        cwd=web_dir,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )
    
    print("Waiting 5 seconds for server to start...")
    await asyncio.sleep(5)
    
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=False)
        
        base_dir = os.path.dirname(os.path.abspath(__file__))
        
        for lang in languages:
            print(f"\n{'='*60}")
            print(f"Processing language: {lang['name']} ({lang['code']})")
            print(f"{'='*60}")
            
            apple_lang_dir = os.path.join(base_dir, "Screenshots", "Apple", lang['name'])
            android_lang_dir = os.path.join(base_dir, "Screenshots", "Android", lang['name'])
            
            os.makedirs(apple_lang_dir, exist_ok=True)
            os.makedirs(android_lang_dir, exist_ok=True)
            
            # Navigate to the app with language parameter
            web_url = f"http://localhost:8000/"
            print(f"Loading app from: {web_url}")
            
            page = await browser.new_page()
            
            # Set language in localStorage on blank page first
            await page.goto("about:blank")
            await page.evaluate(f"localStorage.setItem('app_language_code', '{lang['code']}')")
            
            # Then navigate to app
            await page.goto(web_url, wait_until="networkidle", timeout=60000)
            
            # Wait longer for app to fully load
            await page.wait_for_timeout(8000)
            
            # Hide the screenshot sizer
            await page.evaluate('''() => {
                const sizer = document.querySelector('[style*="position: absolute"]');
                if (sizer) sizer.style.display = 'none';
            }''')
            
            # Take screenshots for each size
            for size in screenshot_sizes:
                print(f"  Processing: {size['name']} ({size['width']}x{size['height']})")
                
                # Set viewport size
                await page.set_viewport_size({
                    "width": size["width"],
                    "height": size["height"],
                })
                
                # Wait for layout to adjust
                await page.wait_for_timeout(3000)
                
                # Determine output directory
                output_dir = apple_lang_dir if size["platform"] == "Apple" else android_lang_dir
                filename = f"{size['name']}_{size['width']}x{size['height']}.png"
                output_path = os.path.join(output_dir, filename)
                
                # Take screenshot
                await page.screenshot(path=output_path, full_page=False)
                
                print(f"  ✓ Saved: {filename}")
            
            await page.close()
        
        await browser.close()
    
    # Stop server
    server_process.terminate()
    server_process.wait()
    
    print(f"\n{'='*60}")
    print(f"✓ All screenshots complete!")
    print(f"{'='*60}")
    print(f"Total: {len(languages)} languages × {len(screenshot_sizes)} sizes = {len(languages) * len(screenshot_sizes)} screenshots")
    print(f"Apple: {len(languages)} languages × 8 sizes = {len(languages) * 8} screenshots")
    print(f"Android: {len(languages)} languages × 5 sizes = {len(languages) * 5} screenshots")
    print(f"\nOutput directory: {os.path.join(base_dir, 'Screenshots')}")

if __name__ == "__main__":
    asyncio.run(take_screenshots())
