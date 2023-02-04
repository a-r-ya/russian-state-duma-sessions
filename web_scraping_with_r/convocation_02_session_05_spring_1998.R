# 5-ая сессия ГД второго созыва (весна 1998 г.)

duma25 = data.frame()
i = 1
num = c(1, 2, 3, 4, 5)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?by=date&sessid=21&doctype=0&dt_start=&dt_end=&phrase1=&PAGEN_1=", num[i])
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma25 = rbind(duma25, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:121)
duma25$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma25$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma25$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma25, "duma25.csv")