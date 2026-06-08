import asyncio
import os
import subprocess
from playwright.async_api import async_playwright

screenshot_sizes = [
    {"width": 1290, "height": 2796, "name": "iPhone_6.7in_ProMax", "platform": "Apple"},
    {"width": 1242, "height": 2688, "name": "iPhone_6.5in", "platform": "Apple"},
]

async def test_screenshots():
    # Start Flutter web server
    base_dir = os.path.dirname(os.path.abspath(__file__))
    
    print("Starting Flutter web server...")
    flutter_process = subprocess.Popen(
        ["flutter", "run", "-d", "chrome", "--web-port", "8080", 
         "--dart-define=DEMO_MODE=true",
         "--dart-define=DEEPSEEK_API_KEY=sk-61422c74411549248f23b4656d4152ae"],
        cwd=base_dir,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE
    )
    
    # Wait for server to start
    print("Waiting 20 seconds for Flutter web server to start...")
    await asyncio.sleep(20)
    
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=False)
        
        test_dir = os.path.join(base_dir, "Screenshots", "Test")
        os.makedirs(test_dir, exist_ok=True)
        
        web_url = "http://localhost:8080/?lang=en"
        print(f"Loading app from: {web_url}")
        
        page = await browser.new_page()
        await page.goto(web_url, wait_until="networkidle", timeout=60000)
        
        print("Waiting 10 seconds for app to fully load...")
        await page.wait_for_timeout(10000)
        
        # Hide the screenshot sizer
        await page.evaluate('''() => {
            const sizer = document.querySelector('[style*="position: absolute"]');
            if (sizer) sizer.style.display = 'none';
        }''')
        
        for size in screenshot_sizes:
            print(f"Processing: {size['name']} ({size['width']}x{size['height']})")
            
            await page.set_viewport_size({
                "width": size["width"],
                "height": size["height"],
            })
            
            print("Waiting 5 seconds for render...")
            await page.wait_for_timeout(5000)
            
            filename = f"test_{size['name']}_{size['width']}x{size['height']}.png"
            output_path = os.path.join(test_dir, filename)
            
            await page.screenshot(path=output_path, full_page=True)
            
            print(f"✓ Saved: {filename}")
        
        await browser.close()
    
    # Stop Flutter server
    flutter_process.terminate()
    print(f"\nTest complete! Check: {test_dir}")

if __name__ == "__main__":
    asyncio.run(test_screenshots())
