function Get-MrkNetworkS2sVpn {
    <#
    .SYNOPSIS
        Retrieves all Meraki Network Site-To-Site VPNs on a Meraki network.
    .DESCRIPTION
        Gets a list of all Meraki Network SiteToSiteVPNs on a Meraki network.
    .EXAMPLE
        Get-MrkNetworkS2sVpn -networkId X_112233445566778899.
    .PARAMETER networkId
        specify a networkId. Find a networkId using get-MrkNetwork [-orgId]
    #>
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][String]$networkId
    )
    $request = Invoke-MrkRestMethod -Method GET -ResourceID ('/networks/' + $networkId + '/siteToSiteVpn')
    return $request
}