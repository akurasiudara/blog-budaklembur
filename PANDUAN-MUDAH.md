# 📖 Panduan Mudah Mengelola Website

Panduan sederhana untuk mengelola konten website tanpa coding.

## 🎯 Yang Bisa Anda Lakukan

✅ Menambah/edit/hapus postingan blog  
✅ Menambah/edit/hapus produk  
✅ Mengubah link sosial media  
✅ Mengubah informasi kontak  
✅ Mengubah judul dan deskripsi website  

## 📝 Cara Menambah Postingan Blog

**MUDAH:** Postingan hanya perlu 1 file saja!

### Langkah 1: Buat File Baru
1. Masuk ke folder `content/posts/`
2. Buat file baru dengan nama `judul-postingan.md`
3. Nama file harus:
   - Huruf kecil semua
   - Pakai tanda `-` untuk spasi
   - Berakhiran `.md`

**Contoh:** `cara-membuat-website.md`

### Langkah 2: Isi Template
Copy-paste template ini ke file baru:

```markdown
---
title: "Judul Postingan Anda"
date: 2025-11-03T10:00:00+07:00
draft: false
tags: ["kategori1", "kategori2"]
image: "https://link-gambar-utama.jpg"
---

Tulis isi postingan di sini menggunakan format Markdown.

## Judul Bagian

Ini paragraf biasa. Anda bisa menulis dengan format:

- **Tebal** untuk teks tebal
- *Miring* untuk teks miring
- [Link](https://example.com) untuk membuat link

### Sub Judul

1. List bernomor
2. Item kedua
3. Item ketiga

> Ini adalah quote atau kutipan

![Alt text](https://link-gambar.jpg)
```

### Langkah 3: Edit Sesuai Kebutuhan
- `title`: Judul yang akan tampil di website
- `date`: Tanggal publikasi (format: YYYY-MM-DDTHH:MM:SS+07:00)
- `draft`: 
  - `false` = postingan akan tampil di website
  - `true` = postingan disimpan sebagai draft
- `tags`: Kategori postingan (dalam tanda kutip, dipisah koma)
- `image`: Link gambar utama postingan

## 🛍️ Cara Mengelola Produk

**MUDAH:** Sekarang produk sama seperti postingan, hanya perlu 1 file saja!

### Cara Menambah Produk Baru

Buat file baru di folder `content/products/` dengan nama `nama-produk.md`:

```markdown
---
title: "Nama Produk"
price: "Rp 50.000"
image: "/images/products/thumbnail.jpg"
images:
  - "/images/products/img1.jpg"
  - "/images/products/img2.jpg"
  - "/images/products/img3.jpg"
---

Deskripsi produk lengkap dengan format Markdown.

**Spesifikasi:**
- Bahan: Premium quality
- Ukuran: Sesuai standar
- Warna: Tersedia berbagai pilihan

**Keunggulan:**
- Kualitas terjamin
- Harga terjangkau
- Garansi resmi

Cocok untuk hadiah atau koleksi pribadi!
```

**Penjelasan:**
- `title`: Nama produk
- `price`: Harga produk
- `image`: Gambar utama (untuk homepage)
- `images`: Kumpulan gambar untuk carousel
- Isi file: Deskripsi detail produk (format Markdown)

### Cara Otomatis (Hugo Command)

```bash
hugo new products/nama-produk.md
```

File akan dibuat dengan template yang sudah lengkap!

## 🔗 Cara Mengubah Link Sosial Media

### File: `data/links.yaml`

```yaml
- name: "Instagram"
  url: "https://instagram.com/username-anda"
  icon: "fab fa-instagram"
- name: "Facebook"
  url: "https://facebook.com/username-anda"
  icon: "fab fa-facebook"
- name: "WhatsApp"
  url: "https://wa.me/628123456789"
  icon: "fab fa-whatsapp"
- name: "Email"
  url: "mailto:email@anda.com"
  icon: "fas fa-envelope"
```

**Icon yang bisa dipakai:**
- Instagram: `fab fa-instagram`
- Facebook: `fab fa-facebook`
- Twitter: `fab fa-twitter`
- WhatsApp: `fab fa-whatsapp`
- Email: `fas fa-envelope`
- Website: `fas fa-globe`
- YouTube: `fab fa-youtube`
- LinkedIn: `fab fa-linkedin`

## ⚙️ Cara Mengubah Informasi Website

### File: `hugo.toml`

```toml
baseURL = 'https://website-anda.com/'
languageCode = 'id-id'
title = 'Nama Website Anda'

[params]
  subtitle = 'Tagline atau deskripsi singkat'
```

**Yang bisa diubah:**
- `baseURL`: Alamat website Anda
- `title`: Judul website (tampil di tab browser)
- `subtitle`: Tagline di homepage

## 📸 Cara Menambah Gambar

### Option 1: Upload ke Hosting Gambar
1. Upload gambar ke:
   - Google Drive (set public)
   - Imgur
   - Cloudinary
   - Atau hosting gambar lainnya
2. Copy link gambar
3. Paste di field `image` atau `images`

### Option 2: Simpan di Folder Static
1. Upload gambar ke folder `static/images/`
2. Gunakan path: `/images/nama-file.jpg`

## 🚀 Cara Publish Perubahan

### Jika Pakai GitHub + Netlify:
1. Commit semua perubahan ke GitHub
2. Push ke repository
3. Netlify otomatis build dan deploy
4. Website update dalam 2-5 menit

### Jika Manual:
1. Jalankan command: `hugo`
2. Upload isi folder `public/` ke web hosting
3. Website langsung update

## ❌ Hal yang Harus Dihindari

🚫 **Jangan edit file di folder:**
- `layouts/` (kecuali tahu HTML)
- `static/css/` (kecuali tahu CSS)
- `public/` (folder ini auto-generate)

🚫 **Jangan hapus file:**
- `hugo.toml`
- File di folder `layouts/`
- File CSS

🚫 **Format yang salah:**
- YAML harus indent pakai spasi (bukan tab)
- Markdown frontmatter harus pakai `---`
- Tanggal harus format ISO

## 🆘 Troubleshooting

### Website tidak update setelah edit
1. ✅ Cek apakah file sudah di-save
2. ✅ Cek apakah sudah commit & push ke GitHub
3. ✅ Tunggu 5 menit untuk build selesai
4. ✅ Refresh browser dengan Ctrl+F5

### Postingan tidak muncul
1. ✅ Cek `draft: false` (bukan `true`)
2. ✅ Cek format tanggal benar
3. ✅ Cek frontmatter pakai `---` di atas dan bawah

### Produk tidak muncul
1. ✅ Cek format YAML benar (indent pakai spasi)
2. ✅ Cek semua field ada (title, slug, price, dll)
3. ✅ Cek tidak ada karakter aneh

### Gambar tidak muncul
1. ✅ Cek link gambar bisa dibuka di browser
2. ✅ Cek URL lengkap (mulai dengan https://)
3. ✅ Cek ukuran file tidak terlalu besar (max 2MB)

## 📞 Bantuan

Jika masih bingung:
1. 📖 Baca dokumentasi Hugo: https://gohugo.io/
2. 🔍 Google error message yang muncul
3. 💬 Tanya developer yang setup website ini

---

**💡 Tips:** Selalu backup file sebelum edit besar-besaran!
-
--

## 🔄 Ringkasan Sistem

### 📝 **Postingan Blog (MUDAH)**
```
✅ Hanya perlu 1 file:
content/posts/nama-post.md

Semua data (judul, tanggal, isi) dalam 1 file.
```

### 🛍️ **Produk (SEKARANG MUDAH JUGA!)**
```
✅ Hanya perlu 1 file:
content/products/nama-produk.md

Semua data (judul, harga, gambar, isi) dalam 1 file.
```

### 🎯 **Tips Mudah:**

#### Untuk Postingan:
- Buat file di `content/posts/`
- Langsung publish!

#### Untuk Produk:
- Buat file di `content/products/`
- Atau gunakan: `hugo new products/nama-produk.md`
- Langsung publish!

---

## ❓ FAQ

### Q: Kenapa produk perlu 2 file?
A: Karena data produk dipakai di homepage dan halaman detail. Hugo memisahkan data dan routing.

### Q: Postingan kenapa cuma 1 file?
A: Karena postingan hanya muncul di halaman blog, jadi semua data bisa dalam 1 file.

### Q: Bagaimana kalau lupa buat file content produk?
A: Produk akan muncul di homepage tapi error "Page Not Found" saat diklik.

### Q: Bisa otomatis buat file content?
A: Ya, pakai file `create-product-content.bat` atau script Hugo.

---

**💡 Ingat:** Selalu test dengan `hugo server` sebelum publish!