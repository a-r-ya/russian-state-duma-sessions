# Объединение датасетов

duma_set <-bind_rows(duma11, duma12, duma13, duma14, duma21, duma21, duma22, duma23, duma24, duma25, duma26, duma27, duma28, duma31, duma32, duma33, duma34, duma35, duma36, duma37, duma38, duma41, duma42, duma43, duma44, duma45, duma46, duma47, duma48, duma51, duma52, duma53, duma54, duma55, duma56, duma57, duma58, duma61, duma62, duma63, duma64, duma65, duma66, duma67, duma68, duma69, duma71, duma72, duma73, duma74, duma75)

write.csv(duma_set, "duma_set.csv")