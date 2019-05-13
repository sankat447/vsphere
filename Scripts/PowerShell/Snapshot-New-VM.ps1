

set-executionpolicy Unrestricted -scope currentuser
$VCHost = $args[0]
$VM = $args[1]

write-host "Connecting to vCenter Server $VCHost"
connect-viserver –server $VCHost
write-host "Taking Snapshot of Virtual Machine $VM"
get-vm $vm | new-snapshot -Name "Automated-Snapshot-561042" -Description "Server Patching Ticket #561042 Created $(Get-Date)" -Quiesce -Memory