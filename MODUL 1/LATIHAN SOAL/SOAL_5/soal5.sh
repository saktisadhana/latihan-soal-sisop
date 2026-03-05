#!/bin/bash
# ============================================================
# SOAL 5: Automasi Script dengan Parameter (Shell Script & Cron)
# ============================================================
# Fokus Materi : Special Variable ($#, $1), Redirection (>>), Cron Jobs
#
# TUGAS:
# 1. Buatlah script bash yang:
#    - Mengecek apakah ada argumen yang dikirim menggunakan $#
#    - Jika ada argumen, gunakan redirection (>>) untuk menambahkan
#      argumen pertama ($1) beserta timestamp ke file status.txt
#    - Jika tidak ada argumen, tampilkan pesan cara penggunaan
#
# 2. Tuliskan syntax crontab (di bagian bawah file ini sebagai
#    komentar) agar script dijalankan setiap hari pukul 02:00 pagi
#    dengan argumen "Aman".
#
# CARA MENJALANKAN:
#   chmod +x soal5.sh
#   bash soal5.sh "Aman"
#   cat status.txt
#
# CONTOH OUTPUT (status.txt):
#   [2026-03-02 02:00:00] Aman
#   [2026-03-03 02:00:00] Aman
# ============================================================

# Tulis kode kamu di bawah ini:


# ============================================================
# TUGAS TAMBAHAN: Syntax Crontab
# ============================================================
# Tuliskan syntax crontab yang tepat agar script ini dijalankan
# setiap hari pada pukul 02:00 pagi dengan argumen "Aman".
#
# Format crontab: menit jam hari bulan hari_minggu perintah
#
# Jawaban (tulis di bawah):
# 
# ============================================================
