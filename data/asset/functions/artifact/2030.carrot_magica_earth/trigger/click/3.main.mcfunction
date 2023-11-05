#> asset:artifact/2030.carrot_magica_earth/trigger/click/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2030.carrot_magica_earth/trigger/click/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
    data modify storage api: Argument.Fluctuation set value -60
    function api:mp/fluctuation

# ここから先は神器側の効果の処理を書く

# 視点の先起点で起動する

# ループ
    scoreboard players set @s 1KE.Tick 150
    schedule function asset:artifact/2030.carrot_magica_earth/trigger/click/schedule_loop 1t replace
