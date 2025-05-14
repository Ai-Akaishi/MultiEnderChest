### Copyright © 2025 赤石愛

## 開いたフラグ削除
scoreboard players reset @s MultiEnderChest.OpenEnderChest

## 一番左のスロットのときだけダイアログ表示
execute if data entity @s {SelectedItemSlot:0} run function multi_ender_chest:show_select_dialog/

