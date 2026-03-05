#!/bin/bash
# ============================================================
# SOAL 8: Routing Aplikasi Berdasarkan Argumen
# ============================================================
# Fokus Materi : Special Variables ($#, $1), Switch Case, Select Loop
#
# TUGAS:
# Buatlah antarmuka program yang perilakunya berubah berdasarkan
# argumen saat dijalankan.
#
# 1. Cek apakah ada argumen yang dikirim ($#).
#    Jika nol, hentikan program dan berikan pesan peringatan.
#    Contoh: "Error: Argumen dibutuhkan! Gunakan --admin atau --user"
#
# 2. Gunakan Switch Case pada $1:
#    a) Jika argumen = "--admin":
#       - Tampilkan menu Select loop dengan opsi:
#         "Restart Server", "Hapus Log", "Keluar"
#       - Setiap pilihan cukup menampilkan pesan konfirmasi
#
#    b) Jika argumen = "--user":
#       - Tampilkan menu Select loop dengan opsi:
#         "Lihat Status", "Keluar"
#
#    c) Jika argumen tidak dikenali (default *):
#       - Tampilkan pesan error: "Argumen '$1' tidak dikenali"
#
# CARA MENJALANKAN:
#   chmod +x soal8.sh
#   bash soal8.sh --admin
#   bash soal8.sh --user
#   bash soal8.sh --unknown
#
# CONTOH OUTPUT (--admin):
#   === Mode Admin ===
#   1) Restart Server
#   2) Hapus Log
#   3) Keluar
#   #? 1
#   Server sedang di-restart...
#
# CONTOH OUTPUT (tanpa argumen):
#   Error: Argumen dibutuhkan! Gunakan --admin atau --user
# ============================================================

# Tulis kode kamu di bawah ini:

