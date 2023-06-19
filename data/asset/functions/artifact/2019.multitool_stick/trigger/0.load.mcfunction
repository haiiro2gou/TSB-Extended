#> asset:artifact/2019.multitool_stick/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:artifact/load

#> 定義類はここに
# @within function
#   asset:artifact/2019.multitool_stick/trigger/**
#   asset:artifact/2020.multitool_pickaxe/trigger/**
#   asset:artifact/2021.multitool_shovel/trigger/**
#   asset:artifact/2022.multitool_axe/trigger/**
#   asset:artifact/2023.multitool_hoe/trigger/**
#   asset:artifact/2024.multitool_shears/trigger/**
    scoreboard objectives add 1K3.Count minecraft.used:minecraft.stick
    scoreboard objectives add 1K4.Count minecraft.used:minecraft.diamond_pickaxe
    scoreboard objectives add 1K5.Count minecraft.used:minecraft.diamond_shovel
    scoreboard objectives add 1K6.Count minecraft.used:minecraft.diamond_axe
    scoreboard objectives add 1K7.Count minecraft.used:minecraft.diamond_hoe
    scoreboard objectives add 1K8.Count minecraft.used:minecraft.shears