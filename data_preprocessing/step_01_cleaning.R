# Чистка датасетов

duma11 <- data.table::fread("duma11.csv")
duma11 <- duma11 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma11$session = "1"
duma11$convocation = "1"
write.csv(duma11, "duma_c11.csv")

duma12 <- data.table::fread("duma12.csv")
duma12 <- duma12 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma12$session = "2"
duma12$convocation = "1"
write.csv(duma12, "duma_c12.csv")

duma13 <- data.table::fread("duma13.csv")
duma13 <- duma13 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma13$session = "3"
duma13$convocation = "1"
write.csv(duma13, "duma_c13.csv")

duma14 <- data.table::fread("duma14.csv")
duma14 <- duma14 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma14$session = "4"
duma14$convocation = "1"
write.csv(duma14, "duma_c14.csv")

duma21 <- data.table::fread("duma21.csv")
duma21 <- duma21 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma21$session = "1"
duma21$convocation = "2"
write.csv(duma21, "duma_c21.csv")

duma22 <- data.table::fread("duma22.csv")
duma22 <- duma22 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma22$session = "2"
duma22$convocation = "2"
write.csv(duma22, "duma_c22.csv")

duma23 <- data.table::fread("duma23.csv")
duma23 <- duma23 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma23$session = "3"
duma23$convocation = "2"
write.csv(duma23, "duma_c23.csv")

duma24 <- data.table::fread("duma24.csv")
duma24 <- duma24 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma24$session = "4"
duma24$convocation = "2"
write.csv(duma24, "duma_c24.csv")

duma25 <- data.table::fread("duma25.csv")
duma25 <- duma25 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma25$session = "5"
duma25$convocation = "2"
write.csv(duma25, "duma_c25.csv")

duma26 <- data.table::fread("duma26.csv")
duma26 <- duma26 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma26$session = "6"
duma26$convocation = "2"
write.csv(duma26, "duma_c26.csv")

duma27 <- data.table::fread("duma27.csv")
duma27 <- duma27 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma27$session = "7"
duma27$convocation = "2"
write.csv(duma27, "duma_c27.csv")

duma28 <- data.table::fread("duma28.csv")
duma28 <- duma28 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma28$session = "8"
duma28$convocation = "2"
write.csv(duma28, "duma_c28.csv")

duma31 <- data.table::fread("duma31.csv")
duma31 <- duma31 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma31$session = "1"
duma31$convocation = "3"
write.csv(duma31, "duma_c31.csv")

duma32 <- data.table::fread("duma32.csv")
duma32 <- duma32 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma32$session = "2"
duma32$convocation = "3"
write.csv(duma32, "duma_c32.csv")

duma33 <- data.table::fread("duma33.csv")
duma33 <- duma33 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma33$session = "3"
duma33$convocation = "3"
write.csv(duma33, "duma_c33.csv")

duma34 <- data.table::fread("duma34.csv")
duma34 <- duma34 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma34$session = "4"
duma34$convocation = "3"
write.csv(duma34, "duma_c34.csv")

duma35 <- data.table::fread("duma35.csv")
duma35 <- duma35 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma35$session = "5"
duma35$convocation = "3"
write.csv(duma35, "duma_c35.csv")

duma36 <- data.table::fread("duma36.csv")
duma36 <- duma36 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma36$session = "6"
duma36$convocation = "3"
write.csv(duma36, "duma_c36.csv")

duma37 <- data.table::fread("duma37.csv")
duma37 <- duma37 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma37$session = "7"
duma37$convocation = "3"
write.csv(duma37, "duma_c37.csv")

duma38 <- data.table::fread("duma38.csv")
duma38 <- duma38 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma38$session = "8"
duma38$convocation = "3"
write.csv(duma38, "duma_c38.csv")

duma41 <- data.table::fread("duma41.csv")
duma41 <- duma41 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma41$session = "1"
duma41$convocation = "4"
write.csv(duma41, "duma_c41.csv")

duma42 <- data.table::fread("duma42.csv")
duma42 <- duma42 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma42$session = "2"
duma42$convocation = "4"
write.csv(duma42, "duma_c42.csv")

duma43 <- data.table::fread("duma43.csv")
duma43 <- duma43 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma43$session = "3"
duma43$convocation = "4"
write.csv(duma43, "duma_c43.csv")

duma44 <- data.table::fread("duma44.csv")
duma44 <- duma44 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma44$session = "4"
duma44$convocation = "4"
write.csv(duma44, "duma_c44.csv")

duma45 <- data.table::fread("duma45.csv")
duma45 <- duma45 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma45$session = "5"
duma45$convocation = "4"
write.csv(duma45, "duma_c45.csv")

duma46 <- data.table::fread("duma46.csv")
duma46 <- duma46 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma46$session = "6"
duma46$convocation = "4"
write.csv(duma46, "duma_c46.csv")

duma47 <- data.table::fread("duma47.csv")
duma47 <- duma47 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma47$session = "7"
duma47$convocation = "4"
write.csv(duma47, "duma_c47.csv")

duma48 <- data.table::fread("duma48.csv")
duma48 <- duma48 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma48$session = "8"
duma48$convocation = "4"
write.csv(duma48, "duma_c48.csv")

duma51 <- data.table::fread("duma51.csv")
duma51 <- duma51 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma51$session = "1"
duma51$convocation = "5"
write.csv(duma51, "duma_c51.csv")

duma52 <- data.table::fread("duma52.csv")
duma52 <- duma52 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma52$session = "2"
duma52$convocation = "5"
write.csv(duma52, "duma_c52.csv")

duma53 <- data.table::fread("duma53.csv")
duma53 <- duma53 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma53$session = "3"
duma53$convocation = "5"
write.csv(duma53, "duma_c53.csv")

duma54 <- data.table::fread("duma54.csv")
duma54 <- duma54 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma54$session = "4"
duma54$convocation = "5"
write.csv(duma54, "duma_c54.csv")

duma55 <- data.table::fread("duma55.csv")
duma55 <- duma55 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma55$session = "5"
duma55$convocation = "5"
write.csv(duma55, "duma_c55.csv")

duma56 <- data.table::fread("duma56.csv")
duma56 <- duma56 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma56$session = "6"
duma56$convocation = "5"
write.csv(duma56, "duma_c56.csv")

duma57 <- data.table::fread("duma57.csv")
duma57 <- duma57 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma57$session = "7"
duma57$convocation = "5"
write.csv(duma57, "duma_c57.csv")

duma58 <- data.table::fread("duma58.csv")
duma58 <- duma58 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma58$session = "8"
duma58$convocation = "5"
write.csv(duma58, "duma_c58.csv")

duma61 <- data.table::fread("duma61.csv")
duma61 <- duma61 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma61$session = "1"
duma61$convocation = "6"
write.csv(duma61, "duma_c61.csv")

duma62 <- data.table::fread("duma62.csv")
duma62 <- duma62 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma62$session = "2"
duma62$convocation = "6"
write.csv(duma62, "duma_c62.csv")

duma63 <- data.table::fread("duma63.csv")
duma63 <- duma63 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma63$session = "3"
duma63$convocation = "6"
write.csv(duma63, "duma_c63.csv")

duma64 <- data.table::fread("duma64.csv")
duma64 <- duma64 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma64$session = "4"
duma64$convocation = "6"
write.csv(duma64, "duma_c64.csv")

duma65 <- data.table::fread("duma65.csv")
duma65 <- duma65 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma65$session = "5"
duma65$convocation = "6"
write.csv(duma65, "duma_c65.csv")

duma66 <- data.table::fread("duma66.csv")
duma66 <- duma66 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma66$session = "6"
duma66$convocation = "6"
write.csv(duma66, "duma_c66.csv")

duma67 <- data.table::fread("duma67.csv")
duma67 <- duma67 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma67$session = "7"
duma67$convocation = "6"
write.csv(duma67, "duma_c67.csv")

duma68 <- data.table::fread("duma68.csv")
duma68 <- duma68 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma68$session = "8"
duma68$convocation = "6"
write.csv(duma68, "duma_c68.csv")

duma69 <- data.table::fread("duma69.csv")
duma69 <- duma69 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma69$session = "9"
duma69$convocation = "6"
write.csv(duma69, "duma_c69.csv")

duma71 <- data.table::fread("duma71.csv")
duma71 <- duma71 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma71$session = "1"
duma71$convocation = "7"
write.csv(duma71, "duma_c71.csv")

duma72 <- data.table::fread("duma72.csv")
duma72 <- duma72 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma72$session = "2"
duma72$convocation = "7"
write.csv(duma72, "duma_c72.csv")

duma73 <- data.table::fread("duma73.csv")
duma73 <- duma73 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma73$session = "3"
duma73$convocation = "7"
write.csv(duma73, "duma_c73.csv")

duma74 <- data.table::fread("duma74.csv")
duma74 <- duma74 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma74$session = "4"
duma74$convocation = "7"
write.csv(duma74, "duma_c74.csv")

duma75 <- data.table::fread("duma75.csv")
duma75 <- duma75 %>% filter(!str_detect(name, "Хроника\\s\\S*|Информация\\s\\S*|Поименн\\S*\\s\\S*"))
duma75$session = "5"
duma75$convocation = "7"
write.csv(duma75, "duma_c75.csv")