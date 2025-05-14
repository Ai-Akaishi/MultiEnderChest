### Copyright © 2025 赤石愛
## エンダーチェストを切り替えるところ

## 現在のエンダーチェストのデータを保存
$data modify storage multi_ender_chest: data.chests[$(number)] set from entity @s EnderItems
