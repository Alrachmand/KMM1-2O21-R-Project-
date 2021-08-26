### Agregasi data ----
flights
?flights

## Statistik deskriptif dengan summarise ----
#  sum(), mean(), min(), max(), median(), n().
#  Mencari rata" keterlambatan keberangkatan penerbangan
flights |>
  summarise(
    avg_delay = mean(dep_delay, na.rm = TRUE))

#  Mencari keterlambatan kebarangkatan paling lama
flights |>
  summarise(
    max_delay = max(dep_delay, na.rm = TRUE))

#  Mencari jumlah penerbangan pada tahun 2013
flights |>
  summarise(freq = n())

flights %>% 
  summarise(
    avg_delay = mean(dep_delay, na.rm = TRUE),
    max_delay = max(dep_delay, na.rm = TRUE),
    freq = n()
  )

summary(flights)

## Menggunakan perintah group_by() dan summarise() ----
#  Hitung rata" keterlambatan kedangtangan masing" maskapai
flights %>% 
  group_by(carrier) %>% 
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE)) %>% 
  arrange(avg_delay)

## Challenge 1 ----
#1 Temukan destinasi penerbangan paling populer
#2 hitung rata" keterlambatan berdasarkan bandara asal
#3 kapan bandara dan maskapai akan paling sibuk

flights %>%
  group_by(dest) %>% 
  summarise(freq = n()) %>% 
  arrange(desc(freq))

flights %>% 
  group_by(origin) %>% 
  summarise(avg_delay = mean(dep_delay, na.rm = TRUE))

flights %>%
  group_by(month) %>% 
  summarise(freq = n()) %>% 
  arrange(desc(freq))
  
## Melakukan perankingan dengan slice_min() dan slice_max() ----
#  Mencari 3 penerbangan paling terlambat datang
flights %>% 
  slice_max(order_by = arr_delay, n = 3)
  
#  Mencari 3 penerbangan paling awal datang
flights %>% 
  slice_min(order_by = arr_delay, n = 3)

## Menggunakan group_by() dan slice_*() ----
#  Mencari 3 penerbangan kedatangan paling telat pada tiap bulan
flights %>% 
  group_by(month) %>%
  slice_max(order_by = arr_delay, n = 3)

## Challenge 2 ----
#1 Cari 2 penerbangan dengan durasi mengudara paling lama berdasarkan tujuan
#2 Cari 4 penerbangan keberangkatan paling dini berdasarkan bandara asal
#3 Cari 2 penerbangan dengan kecepatan tertinggi berdasarkan bulan

flights %>%
  group_by(dest) %>% 
  slice_max(order_by = air_time, n = 2)

flights %>% 
  group_by(origin) %>% 
  slice_min(order_by = dep_delay, n = 4)

flights %>%
  mutate(velo = distance / (air_time/60)) %>% 
  group_by(month) %>%
  slice_max(order_by = velo, n = 2)
  
## Pra Pemrosesan data teks ----
resep <- read_csv("dataset-ayam.csv")
resep

#  Filter data teks dengan str_detect() ----
#  Masakan ayam goreng
resep %>% 
  filter(str_detect(Title, "goreng"))
#  Mencari masakan pedas
resep %>% 
  filter(str_detect(Title, "pedas"))
#  Mencari masakan pedas dan manis
resep %>% 
  filter(str_detect(Title, "goreng|pedas")) %>% 
  select(Title)

#  Menghitung jumlah kata str_count() ----
str_count("ini budi", "i")
str_count("Budi bermain bola", " ")

#  Mencari resep yg lebih dari 5 kata
resep %>% 
  filter(str_count(Title, " ") >=4)

#  Memperbaiki teks dengan str_replace() ----
#  Mengganti kata ayam dengan sapi
resep %>% 
  mutate(resep_sapi = str_replace(Title, "Ayam", "Sapi")) %>% 
  select(Title, resep_sapi)
#  Menyamakan format penulisan ----
#  Mengubah semua huruf menjadi kecil
resep %>% 
  mutate(lower_ttl = tolower(Title)) %>% 
  select(Title, lower_ttl)

#  Menghapus teks dengan str_remove() ----
#  Menghilangkan kata ayam pada resep
resep %>% 
  mutate(ayam_rmv = str_remove(Title, "Ayam")) %>% 
  select(Title, ayam_rmv)
