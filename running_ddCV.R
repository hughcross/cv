
## setting up using datadriven CV

# install.packages("devtools")
devtools::install_github("nstrayer/datadrivencv")

# set wd
setwd('/Users/hughcross/OneDrive/docs/chambas2021/trial_ddCV')

# run ?datadrivencv::use_datadriven_cv to see more details
datadrivencv::use_datadriven_cv(
  full_name = "Hugh Cross",
  data_location = "/Users/hughcross/OneDrive/docs/chambas2021/cv_entries_csv/",
  pdf_location = "https://github.com/hughcross/hughcross.github.io",
  html_location = "https://github.com/hughcross/hughcross.github.io",
  source_location = "https://github.com/hughcross/hughcross.github.io"
)

## sucks, try again with google sheet
# run ?datadrivencv::use_datadriven_cv to see more details
setwd('/Users/hughcross/OneDrive/docs/chambas2021/trial_ddCV2')
datadrivencv::use_datadriven_cv(
  full_name = "Hugh Cross",
  data_location = "https://docs.google.com/spreadsheets/d/1FDxneZnbJLrXuZaSgh3CS3xRTFEaQu22MIGa-dNg2pk/edit#gid=1730172225",
  pdf_location = "https://github.com/hughcross/hughcross.github.io",
  html_location = "https://github.com/hughcross/hughcross.github.io",
  source_location = "https://github.com/hughcross/hughcross.github.io"
)

# trying with original data
# run ?datadrivencv::use_datadriven_cv to see more details
setwd('/Users/hughcross/OneDrive/docs/chambas2021/test_ddCV')
datadrivencv::use_datadriven_cv(
  full_name = "Nick Strayer",
  data_location = "https://docs.google.com/spreadsheets/d/14MQICF2F8-vf8CKPF1m4lyGKO6_thG-4aSwat1e2TWc",
  pdf_location = "https://github.com/nstrayer/cv/raw/master/strayer_cv.pdf",
  html_location = "nickstrayer.me/cv/",
  source_location = "https://github.com/nstrayer/cv"
)

setwd('/Users/hughcross/OneDrive/docs/chambas2021/cv')
#install.packages('utf8')
# Knit the HTML version
rmarkdown::render("index.rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "cv_trial11.html")

# Knit the PDF version to temporary html location
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("index.rmd",
                  params = list(pdf_mode = TRUE),
                  output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = "cv_trial11.pdf")


## Note: to have option with no aside past first page
## added the following to styles.css

.pagedjs_page:not(:first-of-type) {
  --sidebar-width: 0rem;
  --sidebar-background-color: #ffffff;
    --main-width: calc(var(--content-width) - var(--sidebar-width));
  --decorator-horizontal-margin: 0.2in;
}

# here to add FA icon
<i class="fas fa-book"></i> Publications {data-icon=NULL}
--------------------------------------------------------------------------------

###
# Resume 

# Knit the HTML version
rmarkdown::render("resume.Rmd",
                    params = list(pdf_mode = FALSE),
                    output_file = "resume_trial7.html")

# Knit the PDF version to temporary html location
tmp_html_cv_loc <- fs::file_temp(ext = ".html")
rmarkdown::render("resume.Rmd",
                  params = list(pdf_mode = TRUE),
                  output_file = tmp_html_cv_loc)

# Convert to PDF using Pagedown
pagedown::chrome_print(input = tmp_html_cv_loc,
                       output = "resume_trial7.pdf")
  
  
<style>
  body {
    text-align: justify}
</style>
  
\newpage

