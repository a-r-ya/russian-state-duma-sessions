# 5-ая сессия ГД третьего созыва (весна 2002 г.)

duma35 = data.frame()
i = 1
num = c(1, 2, 3, 4, 5)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?by=date&sessid=23&doctype=0&dt_start=&dt_end=&phrase1=&PAGEN_1=", num[i])
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma35 = rbind(duma35, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:140)
duma35$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma35$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma35$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma35, "duma35.csv")