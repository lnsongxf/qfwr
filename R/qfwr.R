#' qfwr: A package providing some tools for QFwR course.
#'
#' @description
#' Tools for my course \emph{Quantitative Finance with R} to
#' facilitate teaching and learning. The interactive exercise
#' is powered by RStudio's \strong{learnr} and DataCamp's
#' \strong{testwhat} package.
#'
#' @author
#' Yongyi Zeng <\email{zzyy@@xmu.edu.cn}>
#'
#' @references
#' \itemize{
#'     \item \href{http://r4ds.had.co.nz/}{R for data science}
#'     \item \href{https://item.jd.com/12398129.html}{R数据科学}
#'     \item \href{https://item.jd.com/12069905.html}{量化金融R语言初级教程}
#' }
#'
#' @docType package
#' @name qfwr
NULL

#' Run an interactive exercise in package \strong{qfwr}.
#'
#' Run an interactive exercise which is contained within R
#' package \strong{qfwr}. \code{qfwr_ex()} is a simple wrapper of
#' \code{\link[learnr]{run_tutorial}}.
#'
#' @param lecture An string, such as "L04".
#'
#' @return An interactive exercise opened in web browser.
#'
#' @examples
#' \dontrun{
#' qfwr_ex("L04")
#' }
#'
#' @name qfwr_ex
#'
#' @export
qfwr_ex <- function(lecture) {
  learnr::run_tutorial(lecture, package = "qfwr")
}


#' List all interactive exercises in package \strong{qfwr}.
#'
#' List all interactive exercises which are contained within
#' R package \strong{qfwr}. \code{qfwr_ls()} is a wrapper of
#' \code{\link[base]{list.files}}.
#'
#' @param pattern An optional regular expression.
#'
#' @return A character vector containing the names of all
#' interactive exercises in package \strong{qfwr} with matching
#' \code{pattern}.
#'
#' @examples
#' \dontrun{
#' qfwr_ls(pattern = "^L")
#' }
#'
#' @name qfwr_ls
#'
#' @export
qfwr_ls <- function(pattern = NULL) {
  tutorial_qfwr <- system.file("tutorials", package = "qfwr")
  list.files(path = tutorial_qfwr, pattern = pattern)
}


#' Open an hands-on lab's instruction in code editor.
#'
#' @param lecture An string, such as "L04".
#'
#' @return A character vector containing the path of the hands-on lab's
#' instruction RMarkdown file \code{L##-lab.Rmd}.
#'
#' @examples
#' \dontrun{
#' qfwr_lab("L04")
#' }
#'
#' @name qfwr_lab
#'
#' @export
qfwr_lab <- function(lecture = NULL) {
  lab <- system.file("tutorials", lecture, paste0(lecture, "-lab"),
                     paste0(lecture, "-lab", ".Rmd"),
                     package = "qfwr")
  if (lab == "") stop("The specified lab's instruction Rmd file don't exist.")
  file.edit(lab, fileEncoding = "UTF-8")
  invisible(lab)
}


#' Open an hands-on lab exercise's answer key in code editor.
#'
#' @param lecture An string, such as "L04".
#' @param exercise An string, such as "ex1".
#'
#' @return A character vector containing the path of the answer
#' key file \code{ex#.R}.
#'
#' @examples
#' \dontrun{
#' qfwr_key("L04", "ex1")
#' }
#'
#' @name qfwr_key
#'
#' @export
qfwr_key <- function(lecture = NULL, exercise = NULL) {
  ans_key <- system.file("tutorials", lecture, paste0(lecture, "-lab"),
                         paste0(exercise, ".R"),
                         package = "qfwr")
  if (ans_key == "") stop("The specified answer key file don't exist.")
  file.edit(ans_key, fileEncoding = "UTF-8")
  invisible(ans_key)
}

#' Chinese inital public offerings data from Chinese stock markets
#'
#' A dataset containing inital public offerings (IPOs) from Chinese
#' stock markets (2006-01-01 - 2019-09-30)
#'
#' @format A tibble with 2390 rows and 15 varialbes:
#' \describe{
#'   \item{\code{stk_cd}}{IPO's stock code}
#'   \item{\code{stk_nme}}{IPO's stock name}
#'   \item{\code{ann_date}}{IPO's announcement date}
#'   \item{\code{on_date}}{IPO's online subscription date}
#'   \item{\code{list_date}}{IPO's list date}
#'   \item{\code{list_board}}{IPO's list board, such as Main, SME, Chinext and STAR}
#'   \item{\code{issue_method}}{IPO's issuing method}
#'   \item{\code{underwriter}}{IPO's underwriter}
#'   \item{\code{csrc_ind}}{IPO's CSRC industry code}
#'   \item{\code{wind_ind}}{IPO's Wind industry code}
#'   \item{\code{ipo_price}}{IPO's issuing price, in CNY}
#'   \item{\code{int_return}}{IPO's initial return, in \%}
#'   \item{\code{int_turnover}}{IPO's initial turnover, in \%}
#'   \item{\code{on_lottery}}{IPO's online subscription lottery rate, in \%}
#'   \item{\code{off_lottery}}{IPO's offline subscription lottery rate, in \%}
#' }
#'
#' @source Wind Financial Terminal, \url{http://www.wind.com.cn}
"ipos"
