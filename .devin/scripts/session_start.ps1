# AIRTA Session Start Check
# Verifies git, project directory, and ADB connection, then outputs context for the agent

$projectDir = "C:\My Projects\AIRTA"
$output = @()

$output += "=== AIRTA SESSION START CHECK ==="
$output += ""

# ── 1. Project Directory ───────────────────────────────────────────────────────
if (Test-Path $projectDir) {
    $output += "[OK] Project directory: $projectDir"
    Set-Location $projectDir
} else {
    $output += "[FAIL] Project directory NOT FOUND: $projectDir"
}

# ── 2. Git Status ──────────────────────────────────────────────────────────────
try {
    $gitBranch = & "C:\Program Files\Git\bin\git.exe" -C $projectDir rev-parse --abbrev-ref HEAD 2>&1
    $gitCommit = & "C:\Program Files\Git\bin\git.exe" -C $projectDir log --oneline -1 2>&1
    $gitRemote = & "C:\Program Files\Git\bin\git.exe" -C $projectDir remote get-url origin 2>&1
    $output += "[OK] Git branch: $gitBranch"
    $output += "[OK] Git remote: $gitRemote"
    $output += "[OK] Last commit: $gitCommit"
} catch {
    $output += "[FAIL] Git check failed: $_"
}

# ── 3. ADB / Phone Connection ──────────────────────────────────────────────────
try {
    $adbOut = adb devices 2>&1
    $devices = $adbOut | Select-String "device$"
    if ($devices) {
        $deviceId = ($devices | Select-Object -First 1).ToString().Trim() -replace "\s+device$", ""
        $model = adb -s $deviceId shell getprop ro.product.model 2>&1
        $output += "[OK] ADB device: $deviceId ($($model.ToString().Trim()))"
        $output += "[OK] USB debugging: active"
    } else {
        $output += "[WARN] No ADB device connected. USB debugging may be off or phone not plugged in."
    }
} catch {
    $output += "[WARN] ADB not available: $_"
}

# ── 4. Session Log (last session summary) ─────────────────────────────────────
$sessionLog = "$projectDir\.devin\SESSION_LOG.md"
if (Test-Path $sessionLog) {
    $output += ""
    $output += "=== PREVIOUS SESSION SUMMARY ==="
    $logContent = Get-Content $sessionLog -Raw
    $output += $logContent
} else {
    $output += ""
    $output += "[INFO] No previous session log found."
}

# ── 5. Project Vision (feature ideas and roadmap) ─────────────────────────────
$visionFile = "$projectDir\PROJECT_VISION.md"
if (Test-Path $visionFile) {
    $output += ""
    $output += "=== PROJECT VISION & FEATURE IDEAS ==="
    $output += "(Full file at: $visionFile — read it for complete roadmap and all inspired ideas)"
    # Print the feature ideas section only (to keep context tight)
    $visionContent = Get-Content $visionFile -Raw
    $ideasSection = ($visionContent -split "## FEATURE IDEAS")[1] -split "## PLATFORM SUPPORT" | Select-Object -First 1
    if ($ideasSection) { $output += "## FEATURE IDEAS$ideasSection" }
} else {
    $output += "[INFO] PROJECT_VISION.md not found - create it to preserve feature ideas."
}

$output += ""
$output += "=== DEPLOY WORKFLOW REMINDER ==="
$output += "To build + install on phone: powershell -ExecutionPolicy Bypass -File '$projectDir\deploy.ps1'"
$output += "Git push must use: C:\Program Files\Git\bin\git.exe (NOT MSYS2 git)"
$output += "Package: com.airta.airelationshiptoxicityanalyzer"
$output += ""

# Output for agent context injection
$output -join "`n"
