# ============================================================
# SOAL 4: Menghitung Kemunculan Data (AWK Arrays)
# ============================================================
# Fokus Materi : Special Rules (BEGIN, END), Associative Arrays
#
# TUGAS:
# Buat script AWK untuk membaca file server.log
#
# 1. Gunakan Array (misal: count[$3]++) untuk menghitung jumlah
#    kemunculan setiap tipe status (INFO, ERROR, WARN) di kolom ke-3.
#
# 2. Setelah file selesai dibaca, cetak hasilnya menggunakan
#    rule END dengan perulangan: for (status in count)
#
# CARA MENJALANKAN:
#   awk -f hitung_log.awk server.log
#
# CONTOH OUTPUT:
#   === Hasil Analisis Log ===
#   INFO  : 7
#   ERROR : 4
#   WARN  : 4
# ============================================================

# Tulis kode AWK kamu di bawah ini:

