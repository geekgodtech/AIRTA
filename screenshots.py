import asyncio
import os
from playwright.async_api import async_playwright

screenshot_sizes = [
    # Apple iOS
    {"width": 1242, "height": 2688, "name": "iPhone_6.5in", "platform": "Apple"},
    {"width": 1290, "height": 2796, "name": "iPhone_6.7in_ProMax", "platform": "Apple"},
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

async def take_screenshots():
    async with async_playwright() as p:
        # Launch browser
        browser = await p.chromium.launch(headless=False)
        
        # Create output directories
        base_dir = os.path.dirname(os.path.abspath(__file__))
        apple_dir = os.path.join(base_dir, "Screenshots", "Apple")
        android_dir = os.path.join(base_dir, "Screenshots", "Android")
        
        os.makedirs(apple_dir, exist_ok=True)
        os.makedirs(android_dir, exist_ok=True)
        
        # Navigate to the app
        web_url = f"file://{os.path.join(base_dir, 'build', 'web', 'index.html')}"
        print(f"Loading app from: {web_url}")
        
        page = await browser.new_page()
        await page.goto(web_url, wait_until="networkidle", timeout=60000)
        
        # Wait for app to fully load
        await page.wait_for_timeout(3000)
        
        # Hide the screenshot sizer
        await page.evaluate('''() => {
            const sizer = document.querySelector('[style*="position: absolute"]');
            if (sizer) sizer.style.display = 'none';
        }''')
        
        # Take screenshots for each size
        for size in screenshot_sizes:
            print(f"Processing: {size['name']} ({size['width']}x{size['height']})")
            
            # Set viewport size
            await page.set_viewport_size({
                "width": size["width"],
                "height": size["height"],
            })
            
            # Wait for layout to adjust
            await page.wait_for_timeout(1000)
            
            # Determine output directory
            output_dir = apple_dir if size["platform"] == "Apple" else android_dir
            filename = f"{size['name']}_{size['width']}x{size['height']}.png"
            output_path = os.path.join(output_dir, filename)
            
            # Take screenshot
            await page.screenshot(path=output_path, full_page=True)
            
            print(f"✓ Saved: {filename}")
        
        await browser.close()
        print("\n✓ All screenshots complete!")
        print(f"Apple screenshots: {apple_dir}")
        print(f"Android screenshots: {android_dir}")

if __name__ == "__main__":
    asyncio.run(take_screenshots())
