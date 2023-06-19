#> asset:artifact/2029.carrot_magica_air/trigger/sneak/
#
# スニークした時にその部位にそのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/**

# storage asset:idのmainhandに装備している神器のIDが入っているので比較し、~/2.check_condition.mcfunctionを実行する
    execute if data storage asset:context id{mainhand:2029} run function asset:artifact/2029.carrot_magica_air/trigger/sneak/main
