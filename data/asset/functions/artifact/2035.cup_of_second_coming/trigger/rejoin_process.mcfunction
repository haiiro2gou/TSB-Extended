#> asset:artifact/2035.cup_of_second_coming/trigger/rejoin_process
# @within tag/function asset:rejoin

# ループ呼び出し
    execute if entity @a[scores={1KJ.FailLogCT=1..}] run schedule function asset:artifact/2035.cup_of_second_coming/trigger/schedule_loop 1t replace