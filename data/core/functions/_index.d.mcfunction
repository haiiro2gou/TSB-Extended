#> core:_index.d
# @private

#> Global Vars
# @public
    #declare score_holder $PlayerCount
    #declare score_holder $LoadTime

# TODO 上記のGlobal VarsをPrivateにしてAPIに移行する
#> Global Vars - Difficulty
# @within *
#   core:load_once
#   api:global_vars/difficulty/**
    #declare score_holder $Difficulty

#> Global Vars - Islands
# @within function
#   core:load_once
#   asset_manager:island/dispel/successful
#   lib:message/common/dispel_island
    #declare score_holder $Islands
    #declare score_holder $IslandsTotal

#> DeathTag
# @public
    #declare tag Death

#> DistributedIntervalGroup
# @within function **6_distributed_interval
    #declare score_holder $DistributeGroup