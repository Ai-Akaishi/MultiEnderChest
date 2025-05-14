### Copyright © 2025 赤石愛
## エンダーチェストを切り替えるところ

function #oh_my_dat:please

## 初期化
data modify storage multi_ender_chest: data set value {number:0, chests:[[]]}
## セーブデータを読み込み
data modify storage multi_ender_chest: data set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MultiEnderChest

## 現在のエンダーチェストのデータを保存
function multi_ender_chest:switch_ender_chest/save-m with storage multi_ender_chest: data
