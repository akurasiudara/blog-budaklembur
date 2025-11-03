@echo off
echo 📝 Membuat postingan blog baru...
echo.

REM Baca input dari user
set /p slug="Masukkan slug postingan (contoh: judul-postingan-baru): "
set /p title="Masukkan judul postingan (contoh: Judul Postingan Baru): "
set /p tags="Masukkan tags (pisahkan dengan koma, contoh: Web Development, Tutorial): "
set /p image="Masukkan URL gambar (opsional, tekan Enter untuk skip): "

REM Buat folder jika belum ada
if not exist "content\posts" mkdir "content\posts"

REM Dapatkan tanggal dan waktu saat ini dalam format Hugo
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set day=%%a
    set month=%%b
    set year=%%c
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set hour=%%a
    set minute=%%b
)

REM Format tanggal untuk Hugo (YYYY-MM-DDTHH:MM:SS+07:00)
set "formatted_date=%year%-%month%-%day%T%hour%:%minute%:00+07:00"

REM Buat file content lengkap
(
echo ---
echo title: "%title%"
echo date: %formatted_date%
echo draft: false
if not "%tags%"=="" (
    echo tags: ["%tags:,=", "%"]
)
if not "%image%"=="" (
    echo image: "%image%"
)
echo ---
echo.
echo # %title%
echo.
echo Tulis konten postingan Anda di sini...
echo.
echo ## Subjudul 1
echo.
echo Paragraf pertama dengan penjelasan detail.
echo.
echo ## Subjudul 2
echo.
echo Paragraf kedua dengan informasi tambahan.
echo.
echo ### Tips atau Poin Penting:
echo - Poin 1
echo - Poin 2  
echo - Poin 3
echo.
echo ## Kesimpulan
echo.
echo Rangkuman atau kesimpulan dari postingan ini.
echo.
) > "content\posts\%slug%.md"

echo.
echo ✅ File berhasil dibuat: content\posts\%slug%.md
echo.
echo 📝 Langkah selanjutnya:
echo 1. Edit file yang baru dibuat untuk melengkapi konten
echo 2. Jika ada gambar, upload ke folder static/images/posts/
echo 3. Test dengan: hugo server
echo 4. Jika sudah siap, ubah draft: false menjadi draft: true untuk publish
echo.
pause