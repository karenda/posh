cls
Get-Mailbox -ResultSize Unlimited | %{
	If (($_.MaxSendSize -like "unlimited") -or ($_.MaxReceiveSize -like "unlimited"))
	{$_.name+"   "+$_.MaxSendSize+"   "+$_.MaxReceiveSize}
}
