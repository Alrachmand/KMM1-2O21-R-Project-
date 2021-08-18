## Prapemrosesan Data---

# - Memastikan data yang ada siap u dianalisa
# - Memastikan data yang relevan u dianalisa

## Menggunakan Library
  #installation 
    install.packages("tidyverse")
    install.packages("nycflights13") 
  #call library
    library("tidyverse")
    library("nycflights13")
    
flights
?flights
glimpse(flights)
fl <- flights

    
## Materi Data Processing
  #  1.Memilih kolom dengan select()
        select(fl, year, month, day)
        select(fl, year:day)
        select(fl, 1, 2, 3)
        select(fl, 1:3)
        fl[1:3]
        # Fungsi helper
        select(fl, starts_with("dep")) ---#Membantu mencari kolom dengan awalan dep
        select(fl, ends_with("time"))  ---#Membantu mencari kolom dengan akhiran time
        select(fl, contains("arr"))    ---#Membatu mencari kolom yang mengandung kata arr di dalamnya
  #  2.Memfilter baris dengan filter()
        #Mencari jadwal terbang u tanggal 17 August  
        filter(fl2, month == 8, day == 17)
        
## Operator perbandingan
   # == persamaan
   # != pertidak samaan
   # >  lebih dari
   # >= lebih dari sama dengan
   # <  kurang dari
   # <= kurang dari sama dengan
        
        filter(fl2, distance > 1000)
        filter(fl2, dep_delay <= 0)
  #  3.Mengurutkan nilai 
  #  4.Membuat kolom baru
  #  5.Menggunakan Operator pipe
  #  6.Agregasi data
  #  7.Prapemrosesan data teks

