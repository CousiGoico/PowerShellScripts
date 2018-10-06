params(
    [# Repository from get the new code
    [ValidateSet("coremes", "share", "framework", IgnoreCase=true)]
    [Parameter(mandatory)]
    [string]
    $repository],
    [# branch the code
    [Parameter(mandatory)]
    [string]
    $bracnch],
    [# Path of the local repository
    [Parameter(AttributeValues)]
    [string]
    $localRepository],
    [# Path of scripts folder
    [Parameter(AttributeValues)]
    [string]
    $scriptsRepository]
)

write-host "GET PULL";

set-location $localRepository;


git pull;
set-location $scriptsRepository;


