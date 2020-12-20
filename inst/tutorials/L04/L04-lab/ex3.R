# 参考答案
flights_sml <- select(
  flights,
  nian = year,
  yue = month,
  ri = day,
  dep_time,
  dep_delay
)
