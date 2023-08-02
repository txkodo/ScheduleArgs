#> schedule_args:schedule
# 
# 呼び出し方
# 
# function schedule_args:schedule {function:string,args:Compound,tick:Int}
# 
# @input function - ファンクション[タグ]のResourceLocation e.g. "minecraft:myfunction"
# @input args - 実行時にファンクションに渡す引数 e.g. {foo:"bar"}
# @input tick - 何tick後に実行するか e.g. 3

execute store result score gametime schedule_args run time query gametime
$scoreboard players add gametime schedule_args $(tick)
$data modify storage schedule_args: _ set value {function:"$(function)",args:$(args),tick:$(tick)}
execute store result storage schedule_args: _.gametime int 1 run scoreboard players get gametime schedule_args
function schedule_args:__sys__/before/subscribe with storage schedule_args: _
data remove storage schedule_args: _