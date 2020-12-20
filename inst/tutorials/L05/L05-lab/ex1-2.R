# ex1-2 的参考答案

# 1-2.1 使用 %>% 分三步完成对数据的处理工作：
#           选择变量->选择样本->变量类型转换
ipos_profile_sml <- ipos_profile %>%
  select( # 选出需要的变量
    stk_cd = X1,            # 代码
    stk_nme = X2,           # 名称
    ann_date = X4,          # 招股日期
    on_date = X5,           # 网上发行日期
    list_date = X6,         # 上市日期
    list_board = X7,        # 上市板
    issue_method = X49,     # 发行方式
    underwriter = X51,      # 主承销商
    csrc_ind = X63,         # 证监会行业(2012版)
    wind_ind = X65          # Wind行业
  ) %>%
  slice(-c(1, 2, 2413, 2414)) %>%    # 删除第1-2行和最后两行
  type_convert()            # 对全部字符变量进行类型转换

# 1-2.2 浏览并 glimpse 数据处理结果
View(ipos_profile_sml)
glimpse(ipos_profile_sml)

