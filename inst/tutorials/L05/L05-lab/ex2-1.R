# ex2-1 的参考答案

# 2-1.1 (安装并)加载 readxl 包
# install.packages("readxl")
library(readxl)

# 2-1.2 得到 ipos_rets.xlsx 的具体路径
#       注意命令执行后的问题警示，由于 col_names=FALSE，read_excel()提供的
#       默认变量名为 ...1，...2 ……
rets_path <- system.file("extdata", "ipos_rets.xlsx", package = "qfwr")

# 2-1.3 读入文档内容
ipos_rets <- read_excel(
  rets_path,           # 文档路径
  col_names = FALSE,   # 还是不要将中文变量名读入，方便处理
  range = "A3:AV2405"  # 也可用 cellranger::cell_rows(3:2405)
)

# 2-1.4 浏览读入的数据集
View(ipos_rets)
