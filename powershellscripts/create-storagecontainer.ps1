#creating storagecontainer

$resourceGroup = "rg-mgcorp-dev"
$storageAccount = "mgcorpdev"
$container = "mgcorpcontainer"
$location = "north europe"


# Log in to Azure
Connect-AzAccount


# Create your Azure resource group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create your Azure storage account

$account = New-AzStorageAccount -ResourceGroupName $resourceGroup -StorageAccountName $storageAccount `
-SkuName Standard_ZRS -Location $location -Kind StorageV2

# Create a new container using the context
$container = New-AzStorageContainer -Name $container -Context $account.Context

#To logout from azure
Logout-AzAccount

