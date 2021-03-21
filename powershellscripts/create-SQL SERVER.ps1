#SQL SERVER creation script


#this will create us username and password  to login for that session
$logindetails = Get-Credential 


#creation of sever
New-AzSqlServer -resourcegroupname 'rg-mgcorp-dev' -ServerName 'sql-mgcorp-dev' -Location 'northeurope' -SqlAdministratorCredentials $logindetails 


#method 2
#creating username and password anad assigning to the server

$userName = 'serveruser'
$password = get-content "C:\Users\pavan\Desktop\password.txt"

$pwdSecureString = ConvertTo-SecureString -Force -AsPlainText $password


$credential = New-Object -TypeName System.Management.Automation.PSCredential `
              -ArgumentList $userName, $pwdSecureString


#creation of sql server
New-AzSqlServer -resourcegroupname "orderstatus" -ServerName "sql-" -Location northeurope -SqlAdministratorCredentials $logindetails  