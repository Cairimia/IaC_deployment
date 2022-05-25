Connect-AzureAD -TenantId "9b3bd631-0b3e-44ca-9ee5-1e3cd8ab9652"

# Setup Variables.
$envPrefix = "dev"
$subscriptionId = $(az account show --query id -o tsv)
$subscriptionName = "Visual Studio Enterprise"
$resourceGroupName = "IaC-Deployment-RG-$envPrefix"
$storageName = "iacsa$envPrefix"
$kvName = "iac-kv-$envPrefix"
$appName = "iac-SPN-$envPrefix"
$region = "westeurope"


$SubscriptionId = (Get-AzSubscription -SubscriptionName $subscriptionName)
$ServicePrincipal = Get-AzADServicePrincipal -DisplayName $appName
$AzureADApplication = Get-AzADApplication -DisplayName $appName
$StartDate = Get-Date
$EndDate = $StartDate.AddYears(2)
$secretAzure = New-AzureADApplicationPasswordCredential -ObjectId $AzureADApplication.Id -CustomKeyIdentifier "MySecret" -StartDate $StartDate -EndDate $EndDate

#### For New-Az... command ####
#$bytes = New-Object Byte[] 32
#$ClientSecret = [System.Convert]::ToBase64String($bytes) | ConvertTo-SecureString -AsPlainText -Force
#$secretAz = New-AzADAppCredential -ObjectId $AzureADApplication.ObjectId -StartDate $startDate -EndDate $EndDate -Password $ClientSecret


$OutputObject = [PSCustomObject]@{
    clientID = $ServicePrincipal.AppId
    subscription = $SubscriptionId.Id
    tenantId = $SubscriptionId.TenantId
    clientSecret = $secretAzure.Value
}

$OutputObject | ConvertTo-Json