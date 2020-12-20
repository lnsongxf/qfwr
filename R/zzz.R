
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    paste0('\n',
           '=================================================\n',
           '  Welcome to Quantitative Finance with R.\n',
           '     Yongyi Zeng, <zzyy@xmu.edu.cn>\n\n',
           '  Start doing exercise by: \n',
           '    qfwr_ls()       # list all exercises\n',
           '    qfwr_ex("L04")  # "L04" is for Lecture 04\n',
           '=================================================',
           '\n'
    )
  )
}
