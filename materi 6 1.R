## R Sebagai Kalkulator ---

#penjumlahan
2 + 5
#pengurangan
4 - 3
#subtraction
5 - 1
#perkalian
6 * 3
#pembagian
8 / 4
#perpangkatan
3 ^ 2
#sisa bagi
5 %% 2
#pembagian dengan pembulatan ke bawah
5 %/% 2


##Menyimpan objek di R ---
phi = 3.14
r = 100

phi*(r^2)

## Tipe data di R ---

# Data atomic vector
2       #numerik
"Adi"   #karakter
UDINUS  #karakter
TRUE    #logical / boolean

class("TRUE")
class(TRUE)

  # Data VECTOR -- Himpunan data atommic bertipe sama
    V1 = c (92, 70, 30, 50)  
    class(V1)
    
    V2 = c ("Adi", "Budi", "Susanto")    
    class(V2)
    
    V3 = c (TRUE, FALSE, TRUE, FALSE)
    class(V3)


## Mengakses elemen vector (indexing)
  # -- index / urutan --
    V1[2]
    V2[3]
    V1[2-4]

  # Data Frame / Tabel -- Gabungan vector berpanjang sama
    # sama panjang
      df1 = data.frame(V1, V3)
      df1
    
    # beda panjang
      data.frame(V1, V2, V3)

## Akses elemen data frame
  # Kolom 
    df1[2]
    df1[1:2]
    df1$V1
    df1$V3
  
  # Baris
    df1[3,]
    df1[3:4,]
  
  # Baris dan kolom bersamaan
    df1[2, 2]
    df1[3:4, 1:2]
    
  # Data List -- Himpunan data campuran -- Fleksibilitas tinggi
    L1 = list(1, "Cindy", TRUE, V1, phi, df1, df2)
    L2 = list("Adi" = 89, "Messi" = 90) # Q and Value

## Akses Elemen List
L2[[2]]
L2$Messi

## if else / percabangan
nilai = 42
if (nilai > 65){
  print ("Selamat Anda Lulus")
} else {
  print("Tetap Semangat")
}

## looping / perulangan / repetisi
  #looping berbasis index
    warna_baju = c("Biru", "Merah", "Abu", "Kuning")
    paste("Hari ini pakai baju warna", warna_baju[1])
    paste("Hari ini pakai baju warna", warna_baju[2])
    paste("Hari ini pakai baju warna", warna_baju[3])
    paste("Hari ini pakai baju warna", warna_baju[4])
    
    for (i in warna_baju){
      baju_hari_ini = paste("Hari ini pakai baju warna", warna)
      print(baju_hari_ini)
    }

  #looping berbasis kondisi
    bak = 0
    while (bak < 11){
      bak = bak + 2
      print(bak)
    }

