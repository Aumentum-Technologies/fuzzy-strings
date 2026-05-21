param($installPath, $toolsPath, $package, $project)

$solutionDir = Split-Path -Path $project.DTE.Solution.FullName -Parent 

Write-Host "SolutionDir: " $solutionDir

& ($solutionDir + "\BuildTools\UninstallDllPackage.ps1") -InstallPath $installPath -ToolsPath $toolsPath -Package $package -Project $project

if (-not $?) {
  throw "Package installation failed";
}