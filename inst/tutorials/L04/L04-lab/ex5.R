# 参考答案
by_day <- group_by(flights, year, month, day)
mdelay_by_day <- summarize(by_day, mdelay = median(dep_delay, na.rm = TRUE))
