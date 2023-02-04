# 1-ая сессия ГД второго созыва (весна 1996 г.)

duma21 = data.frame()
i = 1
num = c(1, 2, 3, 4)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?by=date&sessid=1&doctype=0&dt_start=&dt_end=&phrase1=&PAGEN_1=", num[i])
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma21 = rbind(duma21, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:107)
duma21$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma21$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma21$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma21, "duma21.csv")