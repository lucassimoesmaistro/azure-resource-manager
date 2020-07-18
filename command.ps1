az group create --name rsg-armtemplate --location "Brazil South"

$templateFile="03addnameparameter.json"
az deployment group create --name $templateFile `
                           --resource-group rsg-armtemplate `
                           --template-file $templateFile `
                           --parameters storageName=strlsmteste20200718