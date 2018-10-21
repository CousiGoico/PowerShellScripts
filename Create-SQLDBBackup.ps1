param(
    [Parameter(Mandatory)]
    [string]$instance = "",
    [Parameter(Mandatory)]
    [string]$dbname = "",
    [Parameter(Mandatory)]
    [string]$outPath = "",
    [string]$outFileName = ""
);

# set the out file.
if ($outFileName -eq "") {
    [string]$date = Get-Date -Format "yyyyMMdd";
    $outFileName = "$outPath\$($date)_$($dbname).bak";
}
else {
    [string]$extension = Split-Path $outFileName -Extension;
    if ($extension -eq "") {
        $outFileName = "$outFileName.bak";
    }
    $outFileName = "$outPath\$outFileName";
}

# Backup sql database
Backup-SqlDatabase -ServerInstance $instance -Database $dbname -BackupFile $outFileName ;
