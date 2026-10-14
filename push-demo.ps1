# Usage (PowerShell, inside this folder):
#   .\push-demo.ps1 https://github.com/YOUR_USERNAME/swarm-demo-bugs.git
# Pushes the 4 commits ONE BY ONE so GitHub Actions runs CI on each.
# WARNING: the first push force-overwrites main on that (demo) repo.
param([Parameter(Mandatory=$true)][string]$Remote)
git remote remove origin 2>$null
git remote add origin $Remote
$shas = git rev-list --reverse main
$first = $true
foreach ($s in $shas) {
  Write-Host "Pushing $s ..."
  if ($first) { git push -f origin "${s}:refs/heads/main"; $first = $false }
  else        { git push origin "${s}:refs/heads/main" }
  Start-Sleep -Seconds 45
}
Write-Host "Done. Check the Actions tab: 3 green runs, then 1 red."
