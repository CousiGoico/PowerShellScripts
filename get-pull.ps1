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
Write-Host "Listo para empezar".

