# 8-ая сессия ГД четвертого созыва (осень 2007 г.)

duma48 = data.frame()
i = 1
num = c(1, 2)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?by=date&sessid=34&doctype=0&dt_start=&dt_end=&phrase1=&PAGEN_1=", num[i])
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma48 = rbind(duma48, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:50)
duma48$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma48$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma48$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma48, "duma48.csv")