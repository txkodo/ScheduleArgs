data remove storage schedule_args: calls[-1]
execute if data storage schedule_args: calls[-1] run function schedule_args:__sys__/after/loop with storage schedule_args: calls[-1]
$function $(function) $(args)
