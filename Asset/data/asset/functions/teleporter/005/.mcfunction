#> asset:teleporter/005/
#
# テレポーターの位置の登録チェック
#
# @within tag/function asset:teleporter/register

execute unless data storage asset:teleporter DPR[{D:overworld,X:-39,Y:37,Z:-92}] in overworld positioned -39 37 -92 if entity @p[distance=..40] run function asset:teleporter/005/register