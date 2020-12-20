# ex3 的参考答案

# 3.1 合并式连接两个数据集，仅保留在两个数据集中都出现的样本
ipos <- ipos_profile_sml %>%
  inner_join(ipos_rets_sml, by = "stk_cd")

# 3.2 查看合并后的数据
View(ipos)
