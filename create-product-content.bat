@echo off
echo 🛍️ Membuat produk baru (sistem mudah - 1 file saja!)...
echo.

REM Baca input dari user
set /p slug="Masukkan slug produk (contoh: nama-produk-baru): "
set /p title="Masukkan nama produk (contoh: Nama Produk Baru): "
set /p price="Masukkan harga (contoh: Rp 50.000): "

REM Buat folder jika belum ada
if not exist "content\products" mkdir "content\products"

REM Buat file content lengkap
(
echo ---
echo title: "%title%"
echo price: "%price%"
echo image: "/images/products/%slug%.jpg"
echo images:
echo   - "/images/products/%slug%-1.jpg"
echo   - "/images/products/%slug%-2.jpg"
echo   - "/images/products/%slug%-3.jpg"
echo ---
echo.
echo Deskripsi produk lengkap di sini...
echo.
echo **Spesifikasi:**
echo - Bahan: [Detail bahan]
echo - Ukuran: [Ukuran produk]
echo - Warna: [Pilihan warna]
echo.
echo **Keunggulan:**
echo - [Keunggulan 1]
echo - [Keunggulan 2]
echo - [Keunggulan 3]
echo.
echo **Cara Order:**
echo 1. [Step 1]
echo 2. [Step 2]
echo 3. [Step 3]
echo.
echo Hubungi kami untuk informasi lebih lanjut!
) > "content\products\%slug%.md"

echo.
echo ✅ File berhasil dibuat: content\products\%slug%.md
echo.
echo 📝 Langkah selanjutnya:
echo 1. Edit file yang baru dibuat untuk melengkapi deskripsi
echo 2. Upload gambar ke static/images/products/
echo    - %slug%.jpg (gambar utama)
echo    - %slug%-1.jpg, %slug%-2.jpg, %slug%-3.jpg (carousel)
echo 3. Test dengan: hugo server
echo.
pause