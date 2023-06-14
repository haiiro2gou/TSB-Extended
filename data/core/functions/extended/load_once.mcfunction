#> core:extended/load_once
#
# load時に一回のみ実行される処理群
#
# @within function core:extended/load_once_pre

#> バージョン情報の設定
    data modify storage global Extended.Version set value "v0.1.0-alpha"
    tellraw @a [{"text":"================================","color":"gold"}]
    tellraw @a [{"text":"TSB-Extended ","color":"green"},{"nbt":"Extended.Version","storage":"minecraft:global","color":"dark_gray"},{"text":" by はいいろ。","color":"gray"}]
    tellraw @a [{"text":""}]
    tellraw @a [{"text":"Thanks for installation!"}]
    tellraw @a [{"text":"================================","color":"gold"}]
