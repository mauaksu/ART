﻿Import-module C:\AtomicRedTeam\invoke-atomicredteam\Invoke-AtomicRedTeam.psm1
#Install-Module Powershell-yaml


$tactics=@('T1049','T1033','T1007','T1087.002','T1046','T1087.001','T1016','T1083','T1135','T1136.001','T1543.003','T1547.001','T1546.003','T1110.003','T1558.003','T1003.001')

$tactics | ForEach-Object {
    $currentTactic = $_
    echo "Tactic $currentTactic "
    Invoke-AtomicTest -GetPrereqs $currentTactic
    Invoke-AtomicTest $currentTactic
    Invoke-AtomicTest  $currentTactic -Cleanup

}


