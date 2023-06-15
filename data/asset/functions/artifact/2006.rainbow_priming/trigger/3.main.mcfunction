#> asset:artifact/2006.rainbow_priming/trigger/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:artifact/2006.rainbow_priming/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    execute as @s[tag=1JQ.Melee] run data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/mainhand
    scoreboard players set @s 1JQ.CoolTime 14
    execute as @s[tag=!1JQ.Melee] run data modify storage api: Argument.Fluctuation set value 15
    execute as @s[tag=!1JQ.Melee] run function api:mp/fluctuation

# 近接攻撃
    execute as @s[tag=1JQ.Melee] run function asset:artifact/2006.rainbow_priming/trigger/4.damage

# 神器切り替え
    execute as @s[tag=!1JQ.Melee] run function asset:artifact/2006.rainbow_priming/trigger/5.change

# ループ
    schedule function asset:artifact/2006.rainbow_priming/trigger/schedule_loop 1t replace

# リセット
    tag @s remove 1JQ.Melee