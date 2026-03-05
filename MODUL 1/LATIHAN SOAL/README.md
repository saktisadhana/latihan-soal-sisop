# Latihan Soal — Modul 1: Shell Scripting, Cron, dan AWK

Kumpulan latihan soal untuk mengasah pemahaman materi **Modul 1 Sistem Operasi**.  
Setiap soal berada di subfolder masing-masing beserta file dependency yang dibutuhkan.

Buka file `.sh` atau `.awk` di setiap subfolder, lalu tulis solusi di bawah komentar yang sudah disediakan. Pastikan mengerjakan di lingkungan **Linux/WSL**.

---

## Struktur Folder

```
LATIHAN SOAL/
├── README.md                       ← File ini
├── SOAL_1/
│   └── soal1.sh                    ← [Shell] Pengecekan Kelulusan
├── SOAL_2/
│   └── soal2.sh                    ← [Shell] Menu Interaktif
├── SOAL_3/
│   └── data_mahasiswa.csv          ← [AWK] Data dummy mahasiswa
├── SOAL_4/
│   ├── server.log                  ← [AWK] Log file dummy
│   └── hitung_log.awk              ← [AWK] Script hitung log
├── SOAL_5/
│   ├── soal5.sh                    ← [Shell/Cron] Logging otomatis
│   └── status.txt                  ← File output kosong
├── SOAL_6/
│   ├── access.log                  ← [AWK] Log akses web server (30 baris)
│   └── soal6.awk                   ← [AWK] Analisis error 404 per IP
├── SOAL_7/
│   └── soal7.sh                    ← [Shell] Custom process monitor
├── SOAL_8/
│   └── soal8.sh                    ← [Shell] Routing argumen --admin/--user
├── SOAL_9/
│   ├── kalkulasi.sh                ← [Shell/Cron] Laporan bersyarat
│   └── report.txt                  ← File output kosong
└── SOAL_10/
    └── soal10.sh                   ← [Shell] Progress bar terminal
```

---

## Soal 1: Pengecekan Kondisi dan Operator Dasar (Shell Scripting)

| Item | Detail |
|---|---|
| **Fokus Materi** | Input/Output (`read`, `echo`), Operator Relasional, `If Else` |
| **File** | `SOAL_1/soal1.sh` |

### Tugas
Buatlah script bash yang:
1. Meminta user memasukkan **nama** dan **nilai ujian** menggunakan perintah `read`.
2. Menggunakan `If Else` dan operator relasional (`-ge` atau `-lt`) untuk menentukan hasil:
   - Jika nilai **>= 75**, tampilkan: `[Nama] Lulus!`
   - Jika nilai **< 75**, tampilkan: `[Nama] Tidak Lulus`

### Contoh Output
```
Masukkan nama: Budi
Masukkan nilai ujian: 80
Budi Lulus!
```

---

## Soal 2: Menu Interaktif dengan Fungsi (Shell Scripting)

| Item | Detail |
|---|---|
| **Fokus Materi** | `Select loop`, `Function`, Konsep Variabel Lokal (`local`) |
| **File** | `SOAL_2/soal2.sh` |

### Tugas
Buatlah script yang menampilkan menu menggunakan `Select loop` dengan 3 pilihan:
1. **Cek Nama** — panggil function yang memiliki variabel lokal (`local`) berisi nama Anda, lalu print variabel tersebut.
2. **Cek Sistem** — panggil function lain yang mengeksekusi perintah eksternal (misal `date` atau `pwd`).
3. **Keluar** — keluar dari program.

### Contoh Output
```
1) Cek Nama
2) Cek Sistem
3) Keluar
#? 1
Nama saya: Sakti
#? 2
Tanggal dan waktu saat ini: Mon Mar  2 10:00:00 WIB 2026
#? 3
Keluar dari program. Sampai jumpa!
```

---

## Soal 3: Formatting Data Menggunakan Built-in Variables (AWK)

| Item | Detail |
|---|---|
| **Fokus Materi** | AWK Built-in Variables (`FS`, `OFS`, `NR`, `NF`) |
| **File** | Perintah AWK sebaris di terminal |
| **Dependency** | `SOAL_3/data_mahasiswa.csv` |

### Tugas
Gunakan perintah **AWK sebaris** (di terminal) untuk:
1. Membaca file `data_mahasiswa.csv`.
2. Mengubah *Field Separator* (`FS`) menjadi `,` dan *Output Field Separator* (`OFS`) menjadi ` - `.
3. Menampilkan hanya **nama** (kolom 1) dan **jurusan** (kolom 2).
4. Melewati baris pertama (header) dengan `NR > 1`.

### Contoh Output
```
Budi - Informatika
Siti - Sistem Informasi
Andi - Teknik Komputer
Rina - Informatika
Dewa - Sistem Informasi
```

---

## Soal 4: Menghitung Kemunculan Data (AWK Arrays)

| Item | Detail |
|---|---|
| **Fokus Materi** | Special Rules (`BEGIN`, `END`), Associative Arrays |
| **File** | `SOAL_4/hitung_log.awk` |
| **Dependency** | `SOAL_4/server.log` |

### Tugas
Buat script AWK untuk:
1. Membaca file `server.log`.
2. Menggunakan Array (`count[$3]++`) untuk menghitung jumlah kemunculan setiap tipe status (`INFO`, `ERROR`, `WARN`) di kolom ke-3.
3. Setelah file selesai dibaca, cetak hasilnya di rule `END` dengan `for (status in count)`.

### Contoh Output
```
=== Hasil Analisis Log ===
INFO  : 7
ERROR : 4
WARN  : 4
```

---

## Soal 5: Automasi Script dengan Parameter (Shell Script & Cron)

| Item | Detail |
|---|---|
| **Fokus Materi** | Special Variable (`$#`, `$1`), Redirection (`>>`), Cron Jobs |
| **File** | `SOAL_5/soal5.sh` |
| **Dependency** | `SOAL_5/status.txt` |

### Tugas
1. Buatlah script bash yang:
   - Mengecek apakah ada argumen menggunakan `$#`.
   - Jika ada, gunakan redirection `>>` untuk menambahkan argumen pertama (`$1`) beserta timestamp ke file `status.txt`.
   - Jika tidak ada argumen, tampilkan pesan penggunaan.
2. Tuliskan syntax crontab agar script dijalankan **setiap hari pukul 02:00 pagi** dengan argumen `"Aman"`.

### Contoh Output (`status.txt`)
```
[2026-03-02 02:00:00] Aman
[2026-03-03 02:00:00] Aman
```

---

## Soal 6: Analisis Log Server Terpusat (AWK Lanjutan)

| Item | Detail |
|---|---|
| **Fokus Materi** | Associative Arrays, Special Rules (`BEGIN`, `END`), Built-in Variables AWK |
| **File** | `SOAL_6/soal6.awk` |
| **Dependency** | `SOAL_6/access.log` |

### Tugas
Buatlah script AWK (tanpa Shell wrapper) untuk membaca `access.log` yang dipisahkan oleh koma (`,`):
1. Ubah **Field Separator** (`FS`) menjadi koma.
2. Gunakan **Associative Array** untuk menghitung berapa kali setiap IP Address (kolom 1) melakukan request yang menghasilkan status `404` (kolom 4).
3. Pada blok `END`, cetak semua IP yang memiliki **lebih dari 5** error 404 beserta jumlah error-nya, dengan format: `IP_ADDRESS - JUMLAH_ERROR`.

### Contoh Output
```
=== IP dengan Error 404 > 5 ===
192.168.1.10 - 7
10.0.0.5 - 6
```

---

## Soal 7: Simulasi Custom "Top" Process Monitor (Shell + AWK)

| Item | Detail |
|---|---|
| **Fokus Materi** | While loop, Eksekusi Perintah Eksternal, Function dengan Local Variables |
| **File** | `SOAL_7/soal7.sh` |

### Tugas
1. Buat function `cek_memori` yang menyimpan output perintah `free` ke dalam **local variable**. Gunakan AWK di dalam fungsi untuk mengambil baris "Mem:" dan mencetak sisa memori.
2. Gunakan **While loop** (dengan `sleep 2`) yang membersihkan layar (`clear`), lalu memanggil `cek_memori`.

### Contoh Output (berulang tiap 2 detik)
```
=== Monitor Memori ===
Memori tersedia: 3254816 kB
---
Tekan Ctrl+C untuk berhenti
```

---

## Soal 8: Routing Aplikasi Berdasarkan Argumen (Shell Scripting)

| Item | Detail |
|---|---|
| **Fokus Materi** | Special Variables (`$#`, `$1`), Switch Case, Select Loop |
| **File** | `SOAL_8/soal8.sh` |

### Tugas
1. Cek apakah ada argumen (`$#`). Jika nol, hentikan program dengan pesan peringatan.
2. Gunakan **Switch Case** pada `$1`:
   - `--admin` → tampilkan Select menu: "Restart Server", "Hapus Log", "Keluar"
   - `--user` → tampilkan Select menu: "Lihat Status", "Keluar"
   - Default → tampilkan pesan error bahwa argumen tidak dikenali.

### Contoh Output (`--admin`)
```
=== Mode Admin ===
1) Restart Server
2) Hapus Log
3) Keluar
#? 1
Server sedang di-restart...
```

---

## Soal 9: Penjadwalan Laporan Harian Bersyarat (Cron + Shell Operators)

| Item | Detail |
|---|---|
| **Fokus Materi** | Cron Jobs, Operator Aritmatika, If Else |
| **File** | `SOAL_9/kalkulasi.sh` |
| **Dependency** | `SOAL_9/report.txt` |

### Tugas
1. Buat script yang menerima **dua argumen angka** (`$1` dan `$2`). Kalikan kedua angka menggunakan `$((...))` atau `let`.
2. Gunakan **If Else** dan `-gt`: jika hasil > 100, append "Waspada: Angka Tinggi" ke `report.txt`; jika tidak, append "Aman: Angka Normal".
3. Tuliskan syntax **crontab** agar script berjalan **setiap jam 12 siang, hari Senin–Jumat**.

### Contoh Output (`report.txt`)
```
[2026-03-02 12:00:00] Waspada: Angka Tinggi (15 x 8 = 120)
```

---

## Soal 10: Visualisasi Terminal & Progress Bar (Shell Loops)

| Item | Detail |
|---|---|
| **Fokus Materi** | For loop, Arithmetic `$((...))`, Bash Coloring, Echo |
| **File** | `SOAL_10/soal10.sh` |

### Tugas
1. Gunakan **For loop** dari 1 hingga 10.
2. Kalikan variabel iterasi × 10 menggunakan `$((...))` → 10, 20, ... 100.
3. Cetak "Loading... [X%]" dengan `echo`. Gunakan `sleep 1` sebagai jeda.
4. *(Tantangan ekstra)* Gunakan `echo -e "\r..."` untuk mencetak di baris yang sama, dan terapkan **bash coloring** (`\e[42m`) untuk progress bar hijau.

### Contoh Output
```
Loading... [10%]
Loading... [20%]
...
Loading... [100%]
Selesai!
```

---

**Selamat Mengerjakan!**
