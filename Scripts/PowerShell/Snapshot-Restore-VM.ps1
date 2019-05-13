set-executionpolicy Unrestricted -scope currentuser
$VCHost = $args[0]
$VM = $args[1]

write-host "Connecting to vCenter Server $VCHost"
connect-viserver –server $VCHost
write-host "Restoring Snapshot of Virtual Machine $VM"
$snap = get-snapshot -vm $vm -name "Automated-Snapshot-561042"
set-vm -VM $vm -Snapshot $snap -whatif
set-vm -VM $vm -Snapshot $snap