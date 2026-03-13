$files = Get-ChildItem -Path "c:\Users\Túlio\Documents\GitHub\SaaS-blueprint\BRAINIAC" -Filter "PLAYBOOK.md" -Recurse
foreach ($file in $files) {
    Write-Host "Processing $($file.FullName)"
    $content = Get-Content -Path $file.FullName -Raw -Encoding UTF8
    
    # Mojibake replacements
    $content = $content.Replace("ðŸ§ ", "🧠")
    $content = $content.Replace("ðŸŽ¯", "🎯")
    $content = $content.Replace("ðŸš€", "🚀")
    $content = $content.Replace("ðŸ› ", "🛠️")
    $content = $content.Replace("ðŸ¤–", "🤖")
    $content = $content.Replace("ðŸ“ˆ", "📈")
    
    # Just in case there are variations without the trailing space/char
    $content = $content.Replace("ðŸ§", "🧠")
    $content = $content.Replace("ðŸŽ", "🎯")
    $content = $content.Replace("ðŸš", "🚀")
    $content = $content.Replace("ðŸ›", "🛠️")
    $content = $content.Replace("ðŸ¤", "🤖")
    $content = $content.Replace("ðŸ“", "📈")

    [System.IO.File]::WriteAllText($file.FullName, $content, (New-Object System.Text.UTF8Encoding $false))
}
