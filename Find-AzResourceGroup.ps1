function Find-AzResourceGroup(){

    param (
        [Parameter(Mandatory = $false)]
        [System.String]
        $resourceGroupName
    )

    try {
        
        $infoMessage = "Getting the information of the resource group [$resourceGroupName]"
        Write-Host $infoMessage;

        $resourcegroupdetails = Get-AzResourceGroup -Name  $resourceGroupName

        if($resourcegroupdetails){

            write-host "Hey I can see the resourcegroup [$resourceGroupName] in the azure portal yaya........"
        }
    }
    catch {
        <#Do this if a terminating exception happens#>
        Write-Warning "the resourcegroup :: [$resourceGroupName] doesn't exist can you check the value provided as input"
        Write-Host "Attempted command: Get-AzResourceGroup"
        Write-Error "ERROR: $($_.Exception.Message)"

    }

}

$resourceGroupName = "AZRG_AUD_DIVDOMNIA_DIVD_AME_use2_NETWORK"
Find-AzResourceGroup -resourceGroupName $resourceGroupName
