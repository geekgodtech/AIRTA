import asyncio
import os
import subprocess
import time
from playwright.async_api import async_playwright

screenshot_sizes = [
    {"width": 1290, "height": 2796, "name": "iPhone_6.7in_ProMax", "platform": "Apple"},
    {"width": 1242, "height": 2688, "name": "iPhone_6.5in", "platform": "Apple"},
]

async def test_screenshots():
    # Start local HTTP server
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
        test_dir = os.path.join(base_dir, "Screenshots", "Test")
        os.makedirs(test_dir, exist_ok=True)
        
        web_url = "http://localhost:8000/"
        print(f"Loading app from: {web_url}")
        
        page = await browser.new_page()
        
        # Enable console logging for debugging
        page.on("console", lambda msg: print(f"Console: {msg.text}"))
        page.on("pageerror", lambda exc: print(f"Page Error: {exc}"))
        
        await page.goto(web_url, wait_until="networkidle", timeout=60000)
        
        print("Page title:", await page.title())
        print("Page URL:", page.url)
        
        print("Waiting 15 seconds for app to fully load...")
        await page.wait_for_timeout(15000)
        
        # Check if app rendered
        body_text = await page.evaluate("() => document.body.innerText")
        print(f"Body text length: {len(body_text)}")
        print(f"Body text preview: {body_text[:200]}")
        
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
    
    # Stop server
    server_process.terminate()
    server_process.wait()
    print(f"\nTest complete! Check: {test_dir}")

if __name__ == "__main__":
    asyncio.run(test_screenshots())
