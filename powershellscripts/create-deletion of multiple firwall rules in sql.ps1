#login to azure
Connect-AzAccount

#get all firewall rules with same rule name
$firestore = Get-AzSqlServerFirewallRule -ServerName "wildcraft" -ResourceGroupName "orderstatus" | Where-Object {$_.FirewallRuleName -like "client*"}

#storing the firewall rules in array
$abc=@($firestore)

#looping them using foreach
foreach($i in $abc){
Remove-AzSqlServerFirewallRule -ServerName wildcraft -ResourceGroupName "orderstatus" -FirewallRuleName $i.FirewallRuleName
}