set-executionpolicy Unrestricted -scope currentuser
$VCHost = $args[0]
$VM = $args[1]

write-host "Connecting to vCenter Server $VCHost"
connect-viserver –server $VCHost
write-host "Delete Snapshot of Virtual Machine $VM"
get-snapshot -name Automated-Snapshot-561042 -VM $vm | remove-snapshot -confirm:$false
