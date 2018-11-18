### Define Deployment Variables
{
$location = 'Australia Southeast'
$resourceGroupName = 'ElpherCode-iaas-template'
$resourceDeploymentName = 'ElpherCode-iaas-template-deployment'
$templatePath = 'D:\code\GitRepos\AzureRM'
$templateFile = 'simpleiaas.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}