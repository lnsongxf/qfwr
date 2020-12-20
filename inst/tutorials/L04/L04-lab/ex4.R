# 参考答案
flights_new <- mutate(
  flights,
  dep_time = dep_time %/% 100 * 60 + dep_time %% 100,
  sched_dep_time = sched_dep_time %/% 100 * 60 + sched_dep_time %% 100,
  arr_time = arr_time %/% 100 * 60 + arr_time %% 100,
  sched_arr_time = sched_arr_time %/% 100 * 60 + sched_arr_time %% 100
)
