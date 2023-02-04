# 3-ая сессия ГД четвертого созыва (весна 2005 г.)

duma43 = data.frame()
i = 1
num = c(1, 2, 3, 4)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?by=date&sessid=15&doctype=0&dt_start=&dt_end=&phrase1=&PAGEN_1=", num[i])
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma43 = rbind(duma43, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:116)
duma43$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma43$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma43$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma43, "duma43.csv")