param(
    # Local repository
    [Parameter(Mandatory)]
    [string]$localRepository,
    # Branch
    [Parameter(Mandatory)]
    [string]$branch,
    # Scripts repostory
    [Parameter(Mandatory)]
    [string]$scriptsRepository
)

Write-Host "*******************************";
Write-Host "        GET PULL SCRIPT        ";
Write-Host "*******************************";
Write-Host "Remote repository: $remoteRepository";
Write-Host "Project: $project";
Write-Host "Branch: $branch";
Write-Host "Local repository: $localRepository";
Write-Host "Scripts repository: $scriptsRepository";
Write-Host "*******************************";
Write-Host "";
Write-Host "";
Set-Location $localRepository;
git checkout $branch;
git pull;
git status;
Set-Location $scriptsRepository;
Write-Host "*******************************";

