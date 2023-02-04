# 4-ая сессия ГД первого созыва (осень 1995 г.)

duma14 = data.frame()
i = 1
num = c(1)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?sessid=17&doctype=0&dt_start=&dt_end=&phrase1=")
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma14 = rbind(duma14, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:18)
duma14$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma14$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma14$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma14, "duma14.csv")