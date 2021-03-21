$resourceGroup = "rg-mgcorp-dev"
$storageAccount = "mgcorpdev2"
$location = "eastus"


# Log in to Azure
Connect-AzAccount


# Create your Azure resource group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create your Azure storage account

$account = New-AzStorageAccount -ResourceGroupName $resourceGroup -StorageAccountName $storageAccount `
-SkuName Standard_ZRS -Location $location -Kind StorageV2

# Create a new array with containers
$containerarray = @('finance','marketing','automobile')

foreach($i in $containerarray){
New-AzStorageContainer -Name $i -Context $account.Context -Permission Blob
}

#To logout from azure
Logout-AzAccount