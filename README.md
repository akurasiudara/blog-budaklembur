# Budak Lembur Website

Website personal dengan Hugo yang mudah di-maintenance dan dikustomisasi.

## 📁 Struktur Proyek

```
budaklembur/
├── content/           # Konten website
│   ├── posts/        # Artikel blog (.md files)
│   └── products/     # Halaman produk (.md files)
├── data/             # Data konfigurasi
│   ├── links.yaml    # Link navigasi & sosial media
│   └── products.yaml # Data produk
├── layouts/          # Template HTML
│   ├── _default/     # Template default
│   ├── partials/     # Komponen reusable
│   └── products/     # Template khusus produk
├── static/           # File statis
│   ├── css/         # File CSS
│   └── images/      # Gambar
└── hugo.toml        # Konfigurasi utama
```

## 🔧 CRUD Operations

### 1. Mengelola Link Navigasi & Sosial Media

**File:** `data/links.yaml`

```yaml
- name: "Instagram"
  url: "https://instagram.com/username"
  icon: "fab fa-instagram"
- name: "Facebook"
  url: "https://facebook.com/username"
  icon: "fab fa-facebook"
- name: "Email"
  url: "mailto:email@example.com"
  icon: "fas fa-envelope"
```

**Cara Edit:**
- Tambah/hapus/edit link di file ini
- Link akan otomatis muncul di navbar dan hero section
- Gunakan icon Font Awesome untuk konsistensi

### 2. Mengelola Produk

**File:** `data/products.yaml`

```yaml
- title: "Nama Produk"
  slug: "nama-produk"
  price: "Rp 50.000"
  image: "https://example.com/image.jpg"
  images:
    - "https://example.com/image1.jpg"
    - "https://example.com/image2.jpg"
    - "https://example.com/image3.jpg"
  description: |
    Deskripsi produk lengkap dengan format Markdown.
    
    **Spesifikasi:**
    - Bahan: Premium quality
    - Ukuran: Standar
    
    **Keunggulan:**
    - Kualitas terjamin
    - Harga kompetitif
    
    Perfect untuk kebutuhan Anda!
```

**Cara Edit:**
- Tambah produk baru dengan menambah item di array
- `slug` harus unik dan URL-friendly
- `images` untuk carousel di halaman detail
- Produk otomatis muncul di homepage

### 3. Mengelola Postingan Blog

**Lokasi:** `content/posts/`

**Format File:** `nama-post.md`

```markdown
---
title: "Judul Postingan"
date: 2025-11-03T10:00:00+07:00
draft: false
tags: ["teknologi", "tutorial"]
image: "https://example.com/featured-image.jpg"
---

Isi postingan menggunakan Markdown...

## Heading 2
Paragraf dengan **bold** dan *italic*.

- List item 1
- List item 2

[Link](https://example.com)
```

**Cara Edit:**
- Buat file `.md` baru di folder `content/posts/`
- Set `draft: false` untuk publish
- Set `draft: true` untuk draft
- Tags otomatis jadi kategori

### 4. Konfigurasi Website

**File:** `hugo.toml`

```toml
baseURL = 'https://yoursite.com/'
languageCode = 'id-id'
title = 'Budak Lembur'

[params]
  subtitle = 'Selamat datang di ruang digital saya'
```

## 🚀 Development & Deployment

### Local Development

```bash
# Install Hugo
# Windows: scoop install hugo-extended
# Mac: brew install hugo
# Linux: snap install hugo --channel=extended

# Clone project
git clone <repository-url>
cd budaklembur

# Run development server
hugo server

# Build for production
hugo
```

### Deployment Options

#### 1. Cloudflare Pages (Recommended)
1. Connect GitHub repo to Cloudflare Pages
2. Build command: `hugo --gc --minify`
3. Build output directory: `public`
4. Environment variables: `HUGO_VERSION = 0.120.4`
5. Auto-deploy on git push
6. **Free 100k requests/month + CDN global**

#### 2. GitHub Pages (Backup)
1. Enable GitHub Pages in repo settings
2. Use GitHub Actions for auto-build
3. Deploy from `gh-pages` branch
4. Available at `username.github.io/budaklembur`

#### 3. Netlify
1. Connect GitHub repo to Netlify
2. Build command: `hugo --gc --minify`
3. Publish directory: `public`
4. Auto-deploy on git push

**📖 Panduan lengkap deployment:** Lihat file `DEPLOYMENT.md`

## 📝 Content Management Workflow

### Menambah Postingan Baru
1. Buat file `content/posts/judul-post.md`
2. Isi frontmatter dan konten
3. Commit & push ke repository
4. Website otomatis update (jika pakai Netlify/GitHub Pages)

### Menambah Produk Baru
1. Edit `data/products.yaml`
2. Tambah entry baru dengan data lengkap
3. Commit & push
4. Produk otomatis muncul di homepage

### Mengubah Link Sosial Media
1. Edit `data/links.yaml`
2. Tambah/hapus/edit link sesuai kebutuhan
3. Commit & push
4. Link otomatis update di navbar dan hero

## 🎨 Customization

### Mengubah Warna Theme
Edit file `static/css/main.css`:
```css
/* Ubah warna utama */
#667eea → warna-baru
#764ba2 → warna-baru
```

### Menambah Halaman Baru
1. Buat file di `content/nama-halaman.md`
2. Tambah link di `data/links.yaml` jika perlu
3. Buat template khusus di `layouts/` jika perlu

### Mengubah Layout
- Edit file di folder `layouts/`
- `layouts/index.html` → Homepage
- `layouts/_default/single.html` → Halaman postingan
- `layouts/_default/list.html` → Halaman daftar posts

## 🔍 Troubleshooting

### Website tidak update setelah edit
1. Cek apakah file sudah di-commit dan push
2. Cek build log di Netlify/GitHub Actions
3. Pastikan syntax YAML/Markdown benar

### Gambar tidak muncul
1. Pastikan URL gambar bisa diakses
2. Gunakan URL absolut (https://...)
3. Cek ukuran file tidak terlalu besar

### Error saat build
1. Cek syntax di file YAML
2. Pastikan frontmatter postingan benar
3. Cek Hugo version compatibility

## 📞 Support

Untuk pertanyaan atau masalah:
1. Cek dokumentasi Hugo: https://gohugo.io/documentation/
2. Cek issue di repository
3. Contact developer

## 📄 File Penting

- `hugo.toml` → Konfigurasi utama
- `data/links.yaml` → Link navigasi
- `data/products.yaml` → Data produk
- `content/posts/` → Artikel blog
- `static/css/` → Styling website
- `layouts/` → Template HTML

## 🔄 Backup & Recovery

### Backup
- Seluruh project sudah di Git
- Data penting di folder `content/` dan `data/`
- Export database tidak diperlukan (static site)

### Recovery
- Clone repository
- Run `hugo server`
- Deploy ulang jika perlu

---

**Tips:** Selalu test di local dengan `hugo server` sebelum deploy ke production!