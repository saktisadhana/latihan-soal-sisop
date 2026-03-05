#!/bin/bash
# ============================================================
# SOAL 1: Pengecekan Kondisi dan Operator Dasar
# ============================================================
# Fokus Materi : Input/Output (read, echo), Operator Relasional, If Else
#
# TUGAS:
# Buatlah script bash yang:
# 1. Meminta user memasukkan NAMA menggunakan perintah 'read'.
# 2. Meminta user memasukkan NILAI UJIAN menggunakan perintah 'read'.
# 3. Menggunakan If Else dan operator relasional (-ge atau -lt):
#    - Jika nilai >= 75, tampilkan: "[Nama] Lulus!"
#    - Jika nilai <  75, tampilkan: "[Nama] Tidak Lulus"
#
# CONTOH OUTPUT:
#   Masukkan nama: Budi
#   Masukkan nilai ujian: 80
#   Budi Lulus!
# ============================================================

# Tulis kode kamu di bawah ini:
echo "NAMA: "
read nama
echo "NILAI UJIAN: "
read nilai
if [ $nilai -ge 75 ] 
then 
echo "$nama Lulus!" 
else 
echo "$nama Tidak Lulus"
fi
