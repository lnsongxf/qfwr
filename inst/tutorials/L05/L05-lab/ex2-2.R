# ex2-2 的参考答案

# 2-2.1 (对照原 Excel 文档)选择(并重命名)所需的变量
ipos_rets_sml <- ipos_rets %>%
  select(
    stk_cd = ...1,           # 代码
    ipo_price = ...6,        # 发行价格
    int_return = ...10,      # 上市首日涨跌幅(%)
    int_turnover = ...11,    # 上市首日换手率(%)
    on_lottery = ...41,      # 网上申购中签率(%)
    off_lottery = ...42      # 网下申购中签率(%)
  )

# 2-2.2 浏览并 glimpse 数据处理结果
View(ipos_rets_sml)
glimpse(ipos_rets_sml)
