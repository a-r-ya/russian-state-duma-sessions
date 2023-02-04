# Делаем переменную с датами

duma_set <- data.table::fread("duma_set.csv")
date_vector <- as.vector(duma_set$name, mode = "character")
date <- stri_extract_all(date_vector, regex=c('\\S*[0-9]{1,2}\\s+\\S+\\s+[0-9]{4}'))

date = stri_replace(date, "-01-", regex=c('\\s+(января)\\s+'))
date = stri_replace(date, "-02-", regex=c('\\s+(февраля)\\s+'))
date = stri_replace(date, "-03-", regex=c('\\s+(марта)\\s+'))
date = stri_replace(date, "-04-", regex=c('\\s+(апреля)\\s+'))
date = stri_replace(date, "-05-", regex=c('\\s+(мая)\\s+'))
date = stri_replace(date, "-06-", regex=c('\\s+(июня)\\s+'))
date = stri_replace(date, "-07-", regex=c('\\s+(июля)\\s+'))
date = stri_replace(date, "-08-", regex=c('\\s+(августа)\\s+'))
date = stri_replace(date, "-09-", regex=c('\\s+(сентября)\\s+'))
date = stri_replace(date, "-10-", regex=c('\\s+(октября)\\s+'))
date = stri_replace(date, "-11-", regex=c('\\s+(ноября)\\s+'))
date = stri_replace(date, "-12-", regex=c('\\s+(декабря)\\s+'))

date = as.Date(date, format = "%d-%m-%Y" )

duma_set$date = NA
duma_set$date = date