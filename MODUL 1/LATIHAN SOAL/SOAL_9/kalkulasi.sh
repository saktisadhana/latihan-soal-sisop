#!/bin/bash
# ============================================================
# SOAL 9: Penjadwalan Laporan Harian Bersyarat (Cron + Shell)
# ============================================================
# Fokus Materi : Cron Jobs, Operator Aritmatika, If Else
#
# TUGAS:
# 1. Buat script yang menerima DUA input argumen angka ($1 dan $2).
#    - Gunakan operator aritmatika 'let' atau '$((...))' untuk
#      mengalikan kedua angka tersebut.
#    - Simpan hasilnya ke variabel 'hasil'.
#
# 2. Gunakan If Else dan operator relasional (-gt):
#    - Jika hasil perkalian > 100, tambahkan tulisan
#      "Waspada: Angka Tinggi" beserta timestamp ke file report.txt
#    - Jika tidak, tambahkan "Aman: Angka Normal" ke report.txt
#
# 3. Tuliskan syntax crontab (sebagai komentar di bawah) agar
#    script ini berjalan otomatis SETIAP JAM 12 SIANG
#    di HARI SENIN sampai JUMAT (hanya hari kerja).
#
# CARA MENJALANKAN:
#   chmod +x kalkulasi.sh
#   bash kalkulasi.sh 15 8
#   cat report.txt
#
# CONTOH OUTPUT (report.txt jika 15 x 8 = 120 > 100):
#   [2026-03-02 12:00:00] Waspada: Angka Tinggi (15 x 8 = 120)
#
# CONTOH OUTPUT (report.txt jika 5 x 3 = 15 <= 100):
#   [2026-03-02 12:00:00] Aman: Angka Normal (5 x 3 = 15)
#
# ============================================================

# Tulis kode kamu di bawah ini:


# ============================================================
# TUGAS TAMBAHAN: Syntax Crontab
# ============================================================
# Tuliskan syntax crontab agar script ini berjalan otomatis
# setiap jam 12 siang di hari Senin sampai Jumat.
#
# Jawaban (tulis di bawah):
#
# ============================================================
