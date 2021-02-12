function Get-MrkDevicesStatus {
    <#
    .SYNOPSIS
    Retrieves all VPNs for a Meraki Organization
    .DESCRIPTION
    Gets a list of all VPNs for a Meraki organization.
    .EXAMPLE
    Get-MrkDevicesStatus
    .EXAMPLE
    Get-MrkDevicesStatus -OrgId 111222
    .PARAMETER OrgId
    optional parameter specify an OrgId, default it will take the first OrgId retrieved from Get-MrkOrganizations
    #>
    [CmdletBinding()]
    Param (
        [Parameter()][String]$orgId = (Get-MrkFirstOrgID)
    )
    $request = Invoke-MrkRestMethod -Method GET -ResourceID ('/organizations/' + $orgId + '/deviceStatuses')
    return $request
}