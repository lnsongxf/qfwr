# ex4 的参考答案

# IPO 月度发行家数的 时间序列柱形图
ipos %>%
  count(month = floor_date(list_date, unit = "month")) %>%
  ggplot(aes(month, n)) +
  geom_bar(stat = "identity") +
  labs(x = "Year", y = "num of IPOs") +
  scale_x_date(breaks = "1 years", date_labels = "%Y-%m")
