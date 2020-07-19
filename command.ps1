az group create --name rsg-armtemplate --location "Brazil South"

$templateFile="09addTags.json"
az deployment group create `
                    --name $templateFile `
                    --resource-group rsg-armtemplate `
                    --template-file $templateFile `
                    --parameters storagePrefix=store
                                 storageSKU=Standard_LRS `
                                 webAppName=demoapp