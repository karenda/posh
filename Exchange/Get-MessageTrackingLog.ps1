cls
#$StartTime = (Get-Date).AddHours(-2)
#$EndTime = Get-Date #"17.10.2013 15:00:00"
$StartTime = "09.06.2014 00:00:00"
$EndTime = "09.06.2014 14:15:59"
$RecipientEmail = "Surikov@zaoeps.local"
$Sender = "pknyazev@epcmcorp.com"
$EventId = "Deliver"

#Get-MessageTrackingLog -Sender $Sender -Recipients $RecipientEmail -server b000334.zaoeps.local -EventId $EventId -Start $StartTime -End $EndTime | fl
#Get-MessageTrackingLog -Sender $Sender -Recipients $RecipientEmail -server b000335.zaoeps.local -EventId $EventId -Start $StartTime -End $EndTime | fl

$M = $null
$M+= Get-MessageTrackingLog -Sender $Sender -Recipients $RecipientEmail -server b000334.zaoeps.local -Start $StartTime -End $EndTime | select Timestamp , EventId , MessageSubject , Recipients #, Sender
$M+= Get-MessageTrackingLog -Sender $Sender -Recipients $RecipientEmail -server b000335.zaoeps.local -Start $StartTime -End $EndTime | select Timestamp , EventId , MessageSubject , Recipients #, Sender
$M #| %{If ($_.Recipients -notlike "euqexch2@zaoeps.local"){$_.Recipients}}
