#!/bin/bash
# ============================================================
# SOAL 7: Simulasi Custom "Top" Process Monitor
# ============================================================
# Fokus Materi : While loop, Eksekusi Perintah Eksternal,
#                Function dengan Local Variables
#
# TUGAS:
# Buat script bash yang menampilkan ringkasan sistem yang
# di-refresh setiap 2 detik.
#
# 1. Buat function bernama 'cek_memori' yang:
#    - Menyimpan output perintah 'free' ke dalam local variable
#    - Gunakan AWK di dalam fungsi tersebut untuk hanya mengambil
#      baris "Mem:" dan mencetak sisa memori (kolom available)
#    - Contoh: local mem_info=$(free | awk '/Mem:/ {print $7}')
#
# 2. Gunakan While loop (while true) yang di dalamnya:
#    - Membersihkan layar menggunakan 'clear'
#    - Memanggil fungsi cek_memori
#    - Menunggu 2 detik menggunakan 'sleep 2'
#    - (Tekan Ctrl+C untuk menghentikan)
#
# CARA MENJALANKAN:
#   chmod +x soal7.sh
#   bash soal7.sh
#
# CONTOH OUTPUT (berulang setiap 2 detik):
#   === Monitor Memori ===
#   Memori tersedia: 3254816 kB
#   ---
#   Tekan Ctrl+C untuk berhenti
# ============================================================

# Tulis kode kamu di bawah ini:

