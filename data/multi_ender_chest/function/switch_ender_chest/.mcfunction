### Copyright © 2025 赤石愛
## エンダーチェストを切り替えるところ

function multi_ender_chest:switch_ender_chest/save

## 取り得る範囲に補正
scoreboard players set #_ MultiEnderChest.SelectNumber 0
scoreboard players operation @s MultiEnderChest.SelectNumber > #_ MultiEnderChest.SelectNumber
execute store result score #_ MultiEnderChest.SelectNumber if data storage multi_ender_chest: data.chests[]
scoreboard players operation @s MultiEnderChest.SelectNumber < #_ MultiEnderChest.SelectNumber

## もし最大値ならストレージを追加
execute if score @s MultiEnderChest.SelectNumber = #_ MultiEnderChest.SelectNumber run data modify storage multi_ender_chest: data.chests append value []

## numberを保存
execute store result storage multi_ender_chest: data.number int 1 run scoreboard players get @s MultiEnderChest.SelectNumber
scoreboard players reset @s MultiEnderChest.SelectNumber

## エンダーチェストのデータを読み込み
function multi_ender_chest:switch_ender_chest/load-m with storage multi_ender_chest: data

## oh_my_datに保存
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MultiEnderChest set from storage multi_ender_chest: data

## データを反映
tag @s add MultiEnderChestSwitchPlayer
item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

execute if data storage multi_ender_chest: EnderItems[-1] at @s summon item_display run function multi_ender_chest:switch_ender_chest/apply/

tag @s remove MultiEnderChestSwitchPlayer
