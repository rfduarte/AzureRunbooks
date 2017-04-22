$Conn = Get-AutomationConnection -Name AzureRunAsConnection
Add-AzureRMAccount -ServicePrincipal -Tenant $Conn.TenantID -ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint
$rg = Get-AzureRmResourceGroup -Name GRW -Location brazilsouth
Start-AzureRmVM -Name GRWFW01 -ResourceGroupName $rg.ResourceGroupName