#> asset:artifact/2031.carrot_magica_light/trigger/click/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2031.carrot_magica_light/trigger/click/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand
    data modify storage api: Argument.Fluctuation set value -40
    function api:mp/fluctuation

# ここから先は神器側の効果の処理を書く

# 視点の先起点で起動する

# ループ
    scoreboard players set @s 1KF.Tick 100
    schedule function asset:artifact/2031.carrot_magica_light/trigger/click/schedule_loop 1t replace
