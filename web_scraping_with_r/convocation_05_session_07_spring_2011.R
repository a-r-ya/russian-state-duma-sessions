# 7-ая сессия ГД пятого созыва (весна 2011 г.)

duma57 = data.frame()
i = 1
num = c(1, 2, 3, 4, 5)

for (i in 1:length(num)) {
  url = str_c("http://transcript.duma.gov.ru/search/?by=date&sessid=3341&doctype=0&dt_start=&dt_end=&phrase1=&PAGEN_1=", num[i])
  page = read_html(url)
  name = page %>% html_nodes('.stenogram-result-item a') %>% html_text()
  link = page %>% html_nodes('.stenogram-result-item a') %>% html_attr("href")
  link = str_c("http://transcript.duma.gov.ru",link)
  duma57 = rbind(duma57, data.frame(name,link))
  i = i + 1
  Sys.sleep(0.05)
}

j = 1
numer = c(1:128)
duma57$text = NA

for (j in 1:length(numer)) {
  url = str_c(duma57$link[j])
  page = read_html(url)
  text = page %>% html_nodes('.detail-text') %>% html_text()
  duma57$text[j] = text
  j = j + 1
  Sys.sleep(0.05)
}

write.csv(duma57, "duma57.csv")