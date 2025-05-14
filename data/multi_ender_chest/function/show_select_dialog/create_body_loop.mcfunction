### Copyright © 2025 赤石愛

## ループ部分
data modify storage multi_ender_chest: chest set from storage multi_ender_chest: chests[-1]
data remove storage multi_ender_chest: chests[-1]
data remove storage multi_ender_chest: chest[].Slot

data modify storage multi_ender_chest: bundle set value {\
      type: "minecraft:item",\
      item: {\
        id: "minecraft:bundle",\
        count: 1,\
        components: {\
          item_name: "エンダーチェスト",\
          item_model: "minecraft:ender_chest",\
          bundle_contents: []\
        }\
      },\
      show_decorations: true,\
      show_tooltip: true,\
      width: 20,\
      height: 20,\
      description: {\
        text: "0"\
      }\
    }
execute store result storage multi_ender_chest: index int 1 if data storage multi_ender_chest: chests[]
data modify storage multi_ender_chest: bundle.description.text set string storage multi_ender_chest: index

data modify storage multi_ender_chest: bundle.item.components.bundle_contents set from storage multi_ender_chest: chest
data modify storage multi_ender_chest: body append from storage multi_ender_chest: bundle

execute if data storage multi_ender_chest: chests[-1] run function multi_ender_chest:show_select_dialog/create_body_loop
