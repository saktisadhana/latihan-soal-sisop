#!/bin/bash
# ============================================================
# SOAL 10: Visualisasi Terminal & Progress Bar
# ============================================================
# Fokus Materi : For loop, Arithmetic $((...)), Bash Coloring, Echo
#
# TUGAS:
# Buatlah simulasi proses loading (0% hingga 100%).
#
# 1. Gunakan For loop dari angka 1 hingga 10.
#
# 2. Di dalam loop, kalikan variabel iterasi dengan 10
#    (sehingga menjadi 10, 20, 30... 100)
#    menggunakan sintaks substitusi $((...)).
#    Contoh: persen=$(( i * 10 ))
#
# 3. Cetak teks "Loading... [X]%" di mana X adalah angka
#    hasil perkalian.
#    - Cara sederhana: echo "Loading... [${persen}%]"
#    - Cara lanjutan: echo -ne "\rLoading... [${persen}%]"
#      (\r = carriage return, mencetak di baris yang sama)
#
# 4. Berikan jeda waktu menggunakan 'sleep 1' di dalam loop.
#
# TANTANGAN EKSTRA (opsional):
# Terapkan bash coloring untuk meniru progress bar berwarna hijau:
#   - Hijau: \e[42m (background hijau)
#   - Reset: \e[0m  (kembali ke warna normal)
#   - Contoh: echo -e "\e[42m \e[0m" akan mencetak blok hijau
#   - Buat bar yang bertambah panjang seiring persentase naik
#
# CARA MENJALANKAN:
#   chmod +x soal10.sh
#   bash soal10.sh
#
# CONTOH OUTPUT (sederhana, baris baru):
#   Loading... [10%]
#   Loading... [20%]
#   Loading... [30%]
#   ...
#   Loading... [100%]
#   Selesai!
#
# CONTOH OUTPUT (lanjutan, satu baris dengan \r):
#   Loading... [100%]    <-- angka berubah di tempat yang sama
#   Selesai!
#
# CONTOH OUTPUT (tantangan ekstra, dengan warna):
#   Loading... [██████████] 100%
#   Selesai!
# ============================================================

# Tulis kode kamu di bawah ini:

