# 🛍️ Cara Menambah Produk Baru (SISTEM BARU - MUDAH!)

## 📋 Langkah Sederhana

### Hanya Perlu 1 File Saja!

Buat file baru: `content/products/nama-produk.md`

```markdown
---
title: "Nama Produk Baru"
price: "Rp XX.000"
image: "/images/products/thumbnail.jpg"
images:
  - "/images/products/img1.jpg"
  - "/images/products/img2.jpg"
  - "/images/products/img3.jpg"
---

Deskripsi produk lengkap dengan format Markdown.

**Spesifikasi:**
- Bahan: Premium quality
- Ukuran: Standar

**Keunggulan:**
- Kualitas terjamin
- Harga terjangkau

Perfect untuk kebutuhan Anda!
```

**Sama seperti postingan - semua data dalam 1 file!**

### 3. Upload Gambar Produk

Upload gambar ke folder `static/images/products/`:
- `thumbnail.jpg` - Gambar utama untuk homepage
- `img1.jpg`, `img2.jpg`, dll - Gambar untuk carousel

### 4. Test di Local

```bash
hugo server
# Buka http://localhost:1313/
# Cek apakah produk muncul di homepage
# Klik "Lihat Detail" untuk test halaman produk
```

## 🔧 Menggunakan Hugo Command (Otomatis)

Untuk membuat file content otomatis:

```bash
hugo new products/nama-produk-baru.md
```

File akan dibuat dengan template yang benar.

## ❌ Troubleshooting

### Produk Muncul di Homepage tapi Page Not Found

**Penyebab:** File content tidak ada atau slug tidak cocok

**Solusi:**
1. Cek apakah file `content/products/slug-produk.md` ada
2. Pastikan slug di `products.yaml` sama dengan slug di file content
3. Restart Hugo server: `Ctrl+C` lalu `hugo server`

### Gambar Tidak Muncul

**Penyebab:** Path gambar salah atau file tidak ada

**Solusi:**
1. Pastikan gambar ada di `static/images/products/`
2. Gunakan path relatif: `/images/products/nama-file.jpg`
3. Cek nama file (case sensitive)

### Error saat Build

**Penyebab:** Syntax YAML salah

**Solusi:**
1. Cek indentasi (gunakan spasi, bukan tab)
2. Pastikan string dalam tanda kutip jika ada karakter khusus
3. Cek format multi-line dengan `|`

## 📝 Template Lengkap

### File: `data/products.yaml`
```yaml
- title: "Produk Baru"
  slug: "produk-baru"
  price: "Rp 50.000"
  image: "/images/products/produk-baru-thumb.jpg"
  images:
    - "/images/products/produk-baru-1.jpg"
    - "/images/products/produk-baru-2.jpg"
    - "/images/products/produk-baru-3.jpg"
  description: |
    Deskripsi singkat produk yang menarik.
    
    **Spesifikasi:**
    - Bahan: Premium quality
    - Ukuran: Standar
    - Warna: Berbagai pilihan
    
    **Keunggulan:**
    - Kualitas terjamin
    - Harga terjangkau
    - Garansi resmi
    
    Perfect untuk kebutuhan Anda!
```

### File: `content/products/produk-baru.md`
```markdown
---
title: "Produk Baru"
slug: "produk-baru"
---
```

## 🎯 Checklist

Sebelum commit, pastikan:

- [ ] Data produk sudah ditambah di `products.yaml`
- [ ] File content sudah dibuat di `content/products/`
- [ ] Slug di kedua file sama persis
- [ ] Gambar sudah diupload ke `static/images/products/`
- [ ] Path gambar di `products.yaml` benar
- [ ] Test di local dengan `hugo server`
- [ ] Produk muncul di homepage
- [ ] Halaman detail produk bisa diakses

## 🚀 Deploy

Setelah semua OK:

```bash
git add .
git commit -m "Add new product: nama-produk"
git push origin main
```

Website akan otomatis update dalam 2-5 menit.

---

**💡 Tips:** Selalu test di local sebelum push ke production!