# ex1-1 的参考答案

# 1.1 加载 tidyverse
library(tidyverse)

# 1.2 得到 ipos_profile.csv 的具体路径
profile_path <- system.file("extdata", "ipos_profile.csv", package = "qfwr")

# 1.3 以字符形式读入全部内容
ipos_profile <- read_csv(
  profile_path,        # 文件路径
  col_names = FALSE,   # 把前两行的复合变量名当成数据读进来，也可考虑 skip 参数
  col_types = cols(.default = col_character()),
  # 若读入错误，则可能还需要设置 locale 参数的 encoding 取值
)

# 1.4 浏览下 ipos_profile 数据集
View(ipos_profile)
