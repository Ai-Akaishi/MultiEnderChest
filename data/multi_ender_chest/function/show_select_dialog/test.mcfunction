
$dialog show @p {type:"simple_input_form",title:{text:"test"},inputs:[{type:"number_range",start:1,end:3,steps:2,initial:1,label:{text:"エンダーチェスト"},key:"number"}],action:{id:"submit",label:{text:"決定"},on_submit:{type:"command_template",template:"trigger MultiEnderChest.Number set \$(number)"}}}
