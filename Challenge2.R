#Menggunakan fungsi select, pilih kolom" berikut: year, month, day, dep_dealay, arr_delay, carrier, origin, dest, air_time, distance
fl2 <- select(fl, year, month, day, dep_delay, arr_delay, carrier, origin, dest, air_time, distance) 
fl2

## Menggunakan fungsi filter
# Penerbangan telat berangkat lebih dari 1 jam tapi telah datang kurang dari setengan jam
filter(fl2, dep_delay >= 60, arr_delay <= 30)

# Penerbangan antara nov - jan 
filter(fl2, month >= 11 | month == 1)
filter(fl2, month %in% c(12,11,1))

# Penerbangan dari maskapai UA dan AA
filter(fl2, carrier == "UA" | carrier == "AA")
filter(fl2, carrier %in% c("UA","AA"))

# Pilih kolom dep_delay, arr_delay, air_time, distance 
# Temukan penerbangan dengan berangkat telat lebih 20 menit, tapi datang tidak telat
# Buat kolom berisi informasi kecepatan dalam satuan mil/jam
# Urutkan berdasar kecepatan tertinggi

fl6 <- select(fl2, dep_delay, arr_delay, air_time, distance)
fl7 <- filter(fl6, dep_delay > 20, arr_delay <= 0)
fl8 <- mutate(fl7, 
              speed = distance / (air_time/60))
fl9 <- arrange(fl8, desc(speed))


