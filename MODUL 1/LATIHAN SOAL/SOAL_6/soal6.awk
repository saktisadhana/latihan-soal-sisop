# ============================================================
# SOAL 6: Analisis Log Server Terpusat (AWK Lanjutan)
# ============================================================
# Fokus Materi : Associative Arrays, Special Rules (BEGIN, END),
#                Built-in Variables AWK (FS, OFS)
#
# TUGAS:
# Buatlah script AWK (tanpa Shell wrapper) untuk membaca access.log
# yang dipisahkan oleh tanda koma (,).
#
# 1. Ubah Field Separator (FS) menjadi koma di blok BEGIN.
# 2. Gunakan Associative Array untuk menghitung berapa kali setiap
#    IP Address (kolom 1) melakukan request yang menghasilkan
#    status 404 (kolom 4).
#    Contoh: if ($4 == 404) count[$1]++
# 3. Pada blok END, cetak semua IP yang memiliki LEBIH DARI 5
#    error 404 beserta jumlah error-nya.
#    Format output: "IP_ADDRESS - JUMLAH_ERROR"
#
# CARA MENJALANKAN:
#   awk -f soal6.awk access.log
#
# CONTOH OUTPUT:
#   === IP dengan Error 404 > 5 ===
#   192.168.1.10 - 7
#   10.0.0.5 - 6
# ============================================================

# Tulis kode AWK kamu di bawah ini:

