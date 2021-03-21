#creating appservices

#Connect-AzAccount

#Login-AzAccount

$resourcegroup = "htmlwebsitedeployment"
$location = "central us"
$appservice = "htmappserviceplan"
$webapp = "htmlwebappcss001"

#create new resource group
New-AzResourceGroup -Name $resourcegroup -Location $location

#create webservice app plan 
New-AzAppServicePlan -Name $appservice -Location $location -ResourceGroupName $resourcegroup -Tier Standard

#create webapp 
New-AzWebApp  -name $webapp -ResourceGroupName $resourcegroup -Location $location -AppServicePlan $appservice

#creation of applicationinsights
New-AzApplicationInsights -Name "intelpeace" -ResourceGroupName "disneyworld" -Location 'East Asia' 