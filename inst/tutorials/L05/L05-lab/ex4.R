# ex4 的参考答案

# 4.1 作 IPO “首日收益率”的时序变化的散点图
#     代码模板如下：
ipos %>% ggplot(aes(x = list_date, y = int_return)) +
  geom_point(
    aes(color = list_board),  # 分上市板设置不同颜色
    alpha = 1/5  # 散点可能出现重叠, 设置透明度
  ) +
  labs(x = "Listing date", y = "Initial Returns (%)", color = NULL) +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
  theme(legend.position = "bottom")
