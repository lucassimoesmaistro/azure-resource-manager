az group create --name rsg-armtemplate --location "Brazil South"

$templateFile="01azuredeploy.json"
az deployment group create --name blanktemplate --resource-group rsg-armtemplate --template-file $templateFile

$templateFile="02addstorage.json"
az deployment group create --name addstorage --resource-group rsg-armtemplate --template-file $templateFile