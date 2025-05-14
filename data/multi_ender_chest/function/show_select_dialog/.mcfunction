### Copyright © 2025 赤石愛

## 表示前に現在の状態を保存
function multi_ender_chest:switch_ender_chest/save

## トリガーを有効化
function multi_ender_chest:show_select_dialog/enable_trigger

data modify storage multi_ender_chest: body set value []
data modify storage multi_ender_chest: chests set from storage multi_ender_chest: data.chests

## ループでbodyを生成
execute if data storage multi_ender_chest: chests[0] run function multi_ender_chest:show_select_dialog/create_body_loop

## dialogに代入
data modify storage multi_ender_chest: _.dialog set value {\
  type: "minecraft:simple_input_form",\
  title: {\
    text: "切り替えるエンダーチェストを選んでください"\
  },\
  body: [],\
  inputs: [\
    {\
      type: "minecraft:number_range",\
      key: "number",\
      label: {\
        text: "エンダーチェスト"\
      },\
      label_format: "options.generic_value",\
      width: 200,\
      start: 0,\
      end: 3,\
      steps: 3,\
      initial: 0\
    }\
  ],\
  action: {\
    id: "submit_number",\
    label: {\
      text: "決定"\
    },\
    on_submit: {\
      type: "minecraft:command_template",\
      template: "trigger MultiEnderChest.SelectNumber set $(number)"\
    }\
  }\
}
data modify storage multi_ender_chest: _.dialog.inputs[0].initial set from storage multi_ender_chest: data.number
execute store result storage multi_ender_chest: _.dialog.inputs[0].end int 1 store result storage multi_ender_chest: _.dialog.inputs[0].steps int 1 if data storage multi_ender_chest: data.chests[]
data modify storage multi_ender_chest: _.dialog.body set from storage multi_ender_chest: body

function multi_ender_chest:show_select_dialog/show-m with storage multi_ender_chest: _
