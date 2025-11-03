# Lokasi Penyimpanan Gambar

## Struktur Folder

```
static/
└── images/
    ├── products/          # Gambar produk (thumbnail & detail)
    │   ├── cetak-foto-polaroid.jpg
    │   ├── cetak-foto-polaroid-detail.jpg
    │   ├── gantungan-kunci-akrilik.jpg
    │   ├── gantungan-kunci-akrilik-detail.jpg
    │   ├── kaos-custom-satuan.jpg
    │   └── kaos-custom-satuan-detail.jpg
    │
    └── posts/             # Gambar thumbnail untuk postingan blog
        ├── postingan-pertama.jpg
        └── [nama-postingan].jpg
```

## Cara Menggunakan

### 1. Untuk Produk

Edit file `data/products.yaml` dan ubah URL menjadi path lokal:

```yaml
- title: "Cetak Foto Polaroid"
  slug: "cetak-foto-polaroid"
  price: "Rp 25.000"
  image: "/images/products/cetak-foto-polaroid.jpg"
  detail_image: "/images/products/cetak-foto-polaroid-detail.jpg"
  description: "..."
```

### 2. Untuk Postingan Blog

Edit file markdown di `content/posts/` dan ubah URL menjadi path lokal:

```markdown
---
title: "Postingan Pertama"
date: 2025-10-15T10:00:00+07:00
draft: false
tags: ["Lainnya"]
image: "/images/posts/postingan-pertama.jpg"
---
```

## Catatan Penting

- Semua file di folder `static/` akan di-copy langsung ke root website
- Gunakan path yang dimulai dengan `/` untuk referensi absolut
- Format gambar yang disarankan: JPG, PNG, atau WebP
- Ukuran yang disarankan:
  - Thumbnail produk: 400x300px atau 800x600px
  - Detail produk: 1200x900px atau lebih besar
  - Thumbnail postingan: 600x400px atau 1200x800px

## Contoh Nama File

**Produk:**
- `cetak-foto-polaroid.jpg` (thumbnail)
- `cetak-foto-polaroid-detail.jpg` (gambar detail)

**Postingan:**
- `postingan-pertama.jpg`
- `tutorial-hugo.jpg`
- `tips-desain.jpg`
