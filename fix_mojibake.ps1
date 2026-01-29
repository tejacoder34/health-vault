
$path = "c:\Users\Lakshmi Naga Teja\Downloads\HOSPITALITY\src\pages\HospitalDashboard.jsx"
$encoding = [System.Text.Encoding]::UTF8

# Read file
$txt = [System.IO.File]::ReadAllText($path, $encoding)

# Replacements
# 1. Hospital Icon
$txt = $txt -replace "ðŸ ¥", "🏥"
# 2. Edit Icon
$txt = $txt -replace "âœ ï¸", "✏️"
# 3. Timer Icon
$txt = $txt -replace "â ¸", "⏳"
# 4. Save Icon
$txt = $txt -replace "ðŸ’¾", "💾"
# 5. Broadcast (Backup)
$txt = $txt -replace "📋¢", "📢"
$txt = $txt -replace "📋¤", "📤"
$txt = $txt -replace "📋‚", "📂"
$txt = $txt -replace "📋\s+Location", "📍 Location"

# Write file
[System.IO.File]::WriteAllText($path, $txt, $encoding)
Write-Host "Fixed encoding issues."
