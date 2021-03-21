#first method to create storage account

param($rname,$sname,$location)

$rname = read-host "enter the resourcename"
$sname = read-host "enter the storageaccount"
$location = read-host "enter the location"

#creating a resourcegroup
New-AzResourceGroup -name $rname -location $location

#creating a storageaccount
New-AzStorageAccount -resourcegroup $rname -name $sname -Location $location -SkuName Standard_LRS -Kind StorageV2







#second method to create storage account


#creating a resourcegroup
New-AzResourceGroup -name 'rg-mgcorp-dev' -Location 'east us'

#creating a storageaccount
new-azstorageaccount -ResourceGroup 'rg-mgcorp-dev' -location 'east us' -SkuName Standard_LRS -Kind StorageV2 -Tag @{"environment"="dev";"project"="automobiles"}







#third method to create storage account

$rname = 'rg-mgcorp-dev'
$sname = "mgcorpdev"
$location = "eastus"


#creating a resourcegroup
New-AzResourceGroup -Name $rname -Location $location


#creating a storageaccount
New-AzStorageAccount -ResourceGroupName $rname -Name $sname -Location $location -SkuName Standard_ZRS -Kind StorageV2 -Tag @{"environment"="dev";"project"="automobiles"}
