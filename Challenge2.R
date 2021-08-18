#Menggunakan fungsi select, pilih kolom" berikut: year, month, day, dep_dealay, arr_delay, carrier, origin, dest, air_time, distance
fl2 <- select(fl, year, month, day, dep_delay, arr_delay, carrier, origin, dest, air_time, distance) 
fl2

