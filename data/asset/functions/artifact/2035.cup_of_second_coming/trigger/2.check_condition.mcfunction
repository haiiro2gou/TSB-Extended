#> asset:artifact/2035.cup_of_second_coming/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/2035.cup_of_second_coming/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    execute unless entity @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,tag=!Extended.ArtifactUnsealed,distance=..10,limit=1] run tag @s remove CanUsed
    execute unless entity @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,tag=!Extended.ArtifactUnsealed,distance=..10,limit=1] unless score @s 1KJ.FailLogCT matches 1.. run tellraw @a {"text":"周囲に天使と戦闘できる、浄化された神器が存在しません。","color":"red"}
    execute unless entity @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,tag=!Extended.ArtifactUnsealed,distance=..10,limit=1] unless score @s 1KJ.FailLogCT matches 1.. run scoreboard players set @s 1KJ.FailLogCT 60
    execute unless entity @e[type=armor_stand,tag=CursedArtifact,tag=DispelledCursedArtifact,tag=!Extended.ArtifactUnsealed,distance=..10,limit=1] run schedule function asset:artifact/2035.cup_of_second_coming/trigger/schedule_loop 1t replace

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/2035.cup_of_second_coming/trigger/3.main