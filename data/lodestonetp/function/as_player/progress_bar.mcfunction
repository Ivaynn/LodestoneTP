
title @s times 0 30 10
title @s title ""

execute if score $progress lodestonetp.tmp matches 0 run title @s subtitle ["",{text: "", color: "#c23dd9", bold: true},{text: ",,,,,,,,,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 1 run title @s subtitle ["",{text: ",", color: "#c23dd9", bold: true},{text: ",,,,,,,,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 2 run title @s subtitle ["",{text: ",,", color: "#c23dd9", bold: true},{text: ",,,,,,,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 3 run title @s subtitle ["",{text: ",,,", color: "#c23dd9", bold: true},{text: ",,,,,,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 4 run title @s subtitle ["",{text: ",,,,", color: "#c23dd9", bold: true},{text: ",,,,,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 5 run title @s subtitle ["",{text: ",,,,,", color: "#c23dd9", bold: true},{text: ",,,,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 6 run title @s subtitle ["",{text: ",,,,,,", color: "#c23dd9", bold: true},{text: ",,,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 7 run title @s subtitle ["",{text: ",,,,,,,", color: "#c23dd9", bold: true},{text: ",,,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 8 run title @s subtitle ["",{text: ",,,,,,,,", color: "#c23dd9", bold: true},{text: ",,", color: "gray", bold: true}]
execute if score $progress lodestonetp.tmp matches 9 run title @s subtitle ["",{text: ",,,,,,,,,", color: "#c23dd9", bold: true},{text: ",", color: "gray", bold: true}]
