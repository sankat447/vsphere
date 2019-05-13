Please find here with scripts attached!!
This solution is designed using below tutorials and need VMware CLI 
https://www.petri.com/vmware-vsphere-powercli-getting-started
https://www.petri.com/use-powercli-create-snapshot

-----------------------------------------------------------------------------------------------------------
Procedure : 
Prepare Environment
•	Run Powershell Shell as administrator 
•	PS> Install-Module -Name VMware.PowerCLI

Run Scripts
Note: Snapshot name is hardcoded in all scripts so you have consistancy in name

Take New Snapshot
Snapshot-New-VM.ps1 <vcenterserve> <vm name> 
Example : PS > Snapshot-New-VM.ps1 cmrv-vc01.crucible.iisl.com PatchTestVM

Delete Snapshot
Snapshot-Delete-VM.ps1 <vcenterserve> <vm name> 
Example : PS > Snapshot-Delete-VM.ps1 cmrv-vc01.crucible.iisl.com PatchTestVM


Restore Snapshot
Snapshot-Restore-VM.ps1 <vcenterserve> <vm name> 
Example : PS > Snapshot-Restore-VM.ps1 cmrv-vc01.crucible.iisl.com PatchTestVM
