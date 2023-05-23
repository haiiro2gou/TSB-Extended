#> asset:sacred_treasure/2011.crystal_headgear/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/2011.crystal_headgear/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/head

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run particle minecraft:end_rod ~ ~1 ~ 0.3 0.3 0.3 0.3 15
    execute unless data storage asset:context id.all{head:2011,chest:2012,legs:2013,feet:2014} run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.5 2

# 物理攻撃力補正を魔法攻撃力補正に
    function api:modifier/attack/physical/get
    execute store result score $1JV.Modifier Temporary run data get storage api: Return.Attack.Physical 100
    scoreboard players remove $1JV.Modifier Temporary 100
    execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $1JV.Modifier Temporary
    data modify storage api: Argument.UUID set value [I;1,1,2011,6]
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/magic/add
    data modify storage api: Argument set value {Amount:-1.0d,UUID:[I;1,1,2011,6],Operation:"multiply"}
    function api:modifier/attack/physical/add

# 他部位チェック
    function asset:sacred_treasure/2011.crystal_headgear/trigger/fullset/equip_check

# リセット
    scoreboard players reset $1JV.Modifier Temporary
