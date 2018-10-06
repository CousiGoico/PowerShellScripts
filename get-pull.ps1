param(
    # Remote repository to connect
    [Parameter(Mandatory)]
    [string]$remoteRepository,
    # Project of remote repository
    [Parameter(Mandatory)]
    [string]$project,
    # Branch
    [Parameter(Mandatory)]
    [string]$branch,
    # Local repository
    [Parameter(Mandatory)]
    [string]$localRepository,
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
git pull;
git status;
Write-Host "*******************************";

