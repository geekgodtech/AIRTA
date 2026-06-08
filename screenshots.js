const puppeteer = require('puppeteer');
const fs = require('fs');
const path = require('path');

const screenshotSizes = [
  // Apple iOS
  { width: 1242, height: 2688, name: 'iPhone_6.5in', platform: 'Apple' },
  { width: 1290, height: 2796, name: 'iPhone_6.7in_ProMax', platform: 'Apple' },
  { width: 1242, height: 2208, name: 'iPhone_5.5in', platform: 'Apple' },
  { width: 1170, height: 2532, name: 'iPhone_6.1in', platform: 'Apple' },
  { width: 750, height: 1334, name: 'iPhone_4.7in_SE', platform: 'Apple' },
  // Apple iPad
  { width: 2048, height: 2732, name: 'iPad_Pro_12.9in', platform: 'Apple' },
  { width: 1668, height: 2388, name: 'iPad_Pro_11in', platform: 'Apple' },
  { width: 1620, height: 2160, name: 'iPad_10.2in', platform: 'Apple' },
  // Android
  { width: 1080, height: 1920, name: 'Android_Phone_1080p', platform: 'Android' },
  { width: 1440, height: 2560, name: 'Android_Phone_QHD', platform: 'Android' },
  { width: 1200, height: 1920, name: 'Android_Tablet_7in', platform: 'Android' },
  { width: 1600, height: 2560, name: 'Android_Tablet_10in', platform: 'Android' },
  { width: 2048, height: 2732, name: 'Android_Tablet_Large', platform: 'Android' },
];

async function takeScreenshots() {
  const browser = await puppeteer.launch({
    headless: false, // Show browser for debugging
    defaultViewport: null,
    args: [
      '--start-maximized',
      '--disable-web-security',
      '--disable-features=IsolateOrigins,site-per-process',
    ],
  });

  const page = await browser.newPage();

  // Create output directories
  const appleDir = path.join(__dirname, 'Screenshots', 'Apple');
  const androidDir = path.join(__dirname, 'Screenshots', 'Android');
  
  if (!fs.existsSync(appleDir)) fs.mkdirSync(appleDir, { recursive: true });
  if (!fs.existsSync(androidDir)) fs.mkdirSync(androidDir, { recursive: true });

  // Navigate to the app
  const webUrl = 'file://' + path.join(__dirname, 'build', 'web', 'index.html');
  console.log(`Loading app from: ${webUrl}`);
  
  await page.goto(webUrl, {
    waitUntil: 'networkidle2',
    timeout: 60000,
  });

  // Wait for app to fully load
  await page.waitForTimeout(3000);

  // Hide the screenshot sizer
  await page.evaluate(() => {
    const sizer = document.querySelector('[style*="position: absolute"]');
    if (sizer) sizer.style.display = 'none';
  });

  // Take screenshots for each size
  for (const size of screenshotSizes) {
    console.log(`Processing: ${size.name} (${size.width}x${size.height})`);
    
    // Set viewport size
    await page.setViewport({
      width: size.width,
      height: size.height,
      deviceScaleFactor: 1,
      isMobile: size.platform === 'Apple',
      hasTouch: size.platform === 'Apple',
    });

    // Wait for layout to adjust
    await page.waitForTimeout(1000);

    // Determine output directory
    const outputDir = size.platform === 'Apple' ? appleDir : androidDir;
    const filename = `${size.name}_${size.width}x${size.height}.png`;
    const outputPath = path.join(outputDir, filename);

    // Take screenshot
    await page.screenshot({
      path: outputPath,
      fullPage: true,
    });

    console.log(`✓ Saved: ${filename}`);
  }

  await browser.close();
  console.log('\n✓ All screenshots complete!');
  console.log(`Apple screenshots: ${appleDir}`);
  console.log(`Android screenshots: ${androidDir}`);
}

takeScreenshots().catch(console.error);
