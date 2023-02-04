# 6-ая сессия ГД пятого созыва (осень 2010 г.)

duma56 = data.frame()
i = 1
num = c(1, 2, 3)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?by=date&sessid=26&doctype=0&dt_start=&dt_end=&phrase1=&PAGEN_1=", num[i])
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma56 = rbind(duma56, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:76)
duma56$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma56$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma56$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma56, "duma56.csv")