# 参考答案

# 1. 加载R包
library(dplyr)
library(ggplot2)
library(nycflights13)


# 2. 打开数据包帮助文档
help(package = "nycflights13")

# 3. 打开flights（航班）数据集的帮助文档
?flights

# 4. 打印flights数据集
print(flights)  # 也可省略print()，直接用flights

# 5. 在RStudio数据浏览窗口中打开flights数据集
View(flights)
