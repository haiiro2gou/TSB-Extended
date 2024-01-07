#> asset:artifact/2018.toppo/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/2018.toppo/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出
        stopsound @s * entity.item.break
        tellraw @s [{"text":"<"},{"selector":"@s"},{"text":"> その点トッポってすげぇよな、最後までチョコたっぷりだもん。"}]
    # 処理
        function api:mp/get_max
        execute store result storage api: Argument.Fluctuation double 0.50 run data get storage api: MaxMP 1
        function api:mp/fluctuation
