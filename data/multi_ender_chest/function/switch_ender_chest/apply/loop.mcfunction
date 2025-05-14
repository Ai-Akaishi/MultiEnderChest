### Copyright © 2025 赤石愛
## エンダーチェストを切り替えるところ

data modify storage multi_ender_chest: _ set from storage multi_ender_chest: EnderItems[-1]
data remove storage multi_ender_chest: EnderItems[-1]
data modify storage multi_ender_chest: _.slot set from storage multi_ender_chest: _.Slot
data modify entity @s item set from storage multi_ender_chest: _

function multi_ender_chest:switch_ender_chest/apply/replace-m with storage multi_ender_chest: _

execute if data storage multi_ender_chest: EnderItems[-1] run function multi_ender_chest:switch_ender_chest/apply/loop
