Get-Mailboxdatabase -status | ft Name , DatabaseSize , AvailableNewMailboxSpace

#(Get-Mailboxdatabase -Identity "Online Archive" -status).AvailableNewMailboxSpace