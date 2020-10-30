<#
.SYNOPSIS
    Returns your public IP address.
.DESCRIPTION
    Queries the ipify Public IP Address API and returns your public IP.
.EXAMPLE
    Get-PublicIP
 
    Returns the public IP.
.OUTPUTS
    System.String
.NOTES
    This is just a copy of code from Jake Morrison, just for educational purposes in GIT
#>
function Get-PublicIP {
    $uri = 'https://api.ipify.org'
    try {
        $invokeRestMethodSplat = @{
            Uri         = $uri
            ErrorAction = 'Stop'
        }
        $publicIP = Invoke-RestMethod @invokeRestMethodSplat
    }
    catch {
        Write-Error $_
    }
 
    return $publicIP
}#Get-PublicIP