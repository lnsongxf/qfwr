# 参考答案
flights %>%
  filter(year == 2013, month == 6, day == 13) %>%
  group_by(dest) %>%
  summarise(mean_delay = mean(arr_delay, na.rm = TRUE)) %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  ggplot(aes(lon, lat)) +
  borders("state") +
  geom_point(aes(size = mean_delay), shape = 1) +
  coord_quickmap()
