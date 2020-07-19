$templateFile="09addTags.json"
$devParameterFile="azuredeploy.parameters.dev.json"
$prdParameterFile="azuredeploy.parameters.dev.json"

az group create --name rsg-dev-armtemplate --location "Brazil South"

az deployment group create `
                    --name $templateFile `
                    --resource-group rsg-dev-armtemplate `
                    --template-file $templateFile `
                    --parameters $devParameterFile

az group create --name rsg-prd-armtemplate --location "Brazil South"

az deployment group create `
                    --name $templateFile `
                    --resource-group rsg-prd-armtemplate `
                    --template-file $templateFile `
                    --parameters $prdParameterFile