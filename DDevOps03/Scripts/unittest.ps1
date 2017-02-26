# Login to Azure
Login-AzureRmAccount

# View your current Azure PowerShell session context
Get-AzureRmContext


$ResourceGroup = "ddevops01"

#Testing number of Resources within a RG
$NumberOfResources = Find-AzureRmResource -ResourceGroupNameContains $ResourceGroup | Measure-Object
ECHO "Number of Resources:" $NumberOfResources.Count
$NumberOfResourcesCount = $NumberOfResources.Count -eq 9
ECHO "Test successful:" $NumberOfResourcesCount
if ($NumberOfResourcesCount -like "false")
    {
    Throw "Something is wrong with the number of resources in the resource group"
    }