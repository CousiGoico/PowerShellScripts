param( 
    [Parameter(Mandatory=$true)]
    [string]$repository = "",
    [Parameter(Mandatory=$true)]
    [string]$localPathRepository = "",
    [Parameter(Mandatory=$true)]
    [string]$newBranchName = "",
    [Parameter(Mandatory=$true)]
    [string]$fromBranch = ""
);

$newBranchName = $newBranchName.ToLower();

[string]$actualPath = get-location;
set-location $localPathRepository;

git checkout $fromBranch;
git pull;
git branch $newBranchName;
git checkout $newBranchName;
git push --set-upstream origin $newBranchName;
git push;

set-location $actualPath;