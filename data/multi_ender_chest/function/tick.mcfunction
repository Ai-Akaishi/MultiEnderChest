### Copyright © 2025 赤石愛

## 一番左のスロットを選択しているときにエンダーチェストを開いたときだけ反応させる
execute as @a[scores={MultiEnderChest.OpenEnderChest=1..}] run function multi_ender_chest:show_select_dialog/filter

execute as @a[scores={MultiEnderChest.SelectNumber=0..}] run function multi_ender_chest:switch_ender_chest/
