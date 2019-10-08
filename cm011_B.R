
library("here")
library("tidyverse")
library("readxl")

gapminder_sum <- read_csv('./gapminder_sum.csv')

# imagine trying to access './test/tes/te/t/gapminder_sum.csv'
# you would have to flip every / into \ for a windows computer
# instead use:

read_csv(here::here("test", "tes", "te", "t", "gapminder_sum.csv"))

set_here() #creates .here file in your directory, which will be used as reference

write_csv(gapminder_sum, here::here("gapminder_sum2.csv"))


#read Excel file
#read_csv can directly import URLs but read_excel requires you to download it

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

download.file(url= data_url, destfile=here::here("greatestgivers.xls"))

# old method:
# download.file(url= data_url, destfile=paste("./datasets", file_name))

file_name <- basename(data_url) #keep base name
# can use "basename(data_url)" in download.file()

# DOWNLOADED FILE IN CLASS VIA R BUT IT WAS CORRUPTED?
# SHOWED 24KB DOWNLOADED BUT COULD NOT OPEN
# RESTORED MANUALLY DOWNLOADED FILE FROM RECYCLE BIN TO PROCEED

philanthropists <- read_excel(here::here(file_name), trim_ws=TRUE)

view(philanthropists)

# second excel file
mri <- read_excel(here::here("Firas-MRI.xlsx"), range= "A1:L12")
view(mri)

# remove the 10th column
mri <- mri[,-10]

# move slices into one column
mri <- mri %>% 
  pivot_longer(cols="Slice 1":"Slice 8", 
               names_to="slice number",
               values_to="value")


