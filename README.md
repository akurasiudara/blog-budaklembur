# Budak Lembur Website

Website personal **Ifan Irfansyah** dengan Hugo yang mudah di-maintenance dan dikustomisasi.

🌐 **Link Resmi:** [ifan.web.id](https://ifan.web.id)

## 📁 Struktur Proyek

```
budaklembur/
├── content/           # Konten website
│   ├── posts/        # Artikel blog (.md files)
│   └── products/     # Halaman produk (.md files)
├── data/             # Data konfigurasi
│   └── links.yaml    # Link navigasi & sosial media
├── layouts/          # Template HTML
│   ├── _default/     # Template default
│   ├── partials/     # Komponen reusable
│   └── products/     # Template khusus produk
├── static/           # File statis
│   ├── css/         # File CSS
│   └── images/      # Gambar
├── tools/            # Tools untuk content management
│   ├── create-product-content.bat    # Windows tool untuk produk
│   ├── create-post-content.bat       # Windows tool untuk postingan
│   ├── new-product.sh               # Linux/Mac tool untuk produk
│   ├── new-post.sh                  # Linux/Mac tool untuk postingan
│   ├── check-products.py            # Validasi produk
│   └── check-posts.py               # Validasi postingan
└── hugo.toml        # Konfigurasi utama
```

## �️ ToolOs untuk Content Management

### 🚀 Cara Cepat Menambah Konten

#### Windows Users
```bash
# Membuat produk baru
tools/create-product-content.bat

# Membuat postingan baru
tools/create-post-content.bat
```

#### Linux/Mac Users
```bash
# Membuat produk baru
./tools/new-product.sh

# Membuat postingan baru
./tools/new-post.sh
```

#### Validasi Konten
```bash
# Cek semua produk
python tools/check-products.py

# Cek semua postingan
python tools/check-posts.py
```

### 📖 Panduan Lengkap
- **Produk:** Lihat file `CARA-TAMBAH-PRODUK.md`
- **Postingan:** Lihat file `CARA-TAMBAH-POSTINGAN.md`

## 🔧 Manual Content Management

### 1. Mengelola Link Navigasi & Sosial Media

**File:** `data/links.yaml`

```yaml
- name: "Instagram"
  url: "https://instagram.com/presiden.irfans"
  icon: "fab fa-instagram"
- name: "Facebook"
  url: "https://facebook.com/presiden.irfans"
  icon: "fab fa-facebook"
- name: "Email"
  url: "mailto:email@example.com"
  icon: "fas fa-envelope"
```

**Cara Edit:**
- Tambah/hapus/edit link di file ini
- Link akan otomatis muncul di navbar dan hero section
- Gunakan icon Font Awesome untuk konsistensi

### 2. Mengelola Produk (Sistem Baru - Single File)

**Lokasi:** `content/products/`

**Format File:** `nama-produk.md`

```markdown
---
title: "Nama Produk"
price: "Rp 50.000"
image: "/images/products/nama-produk.jpg"
images:
  - "/images/products/nama-produk-1.jpg"
  - "/images/products/nama-produk-2.jpg"
  - "/images/products/nama-produk-3.jpg"
---

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
- Buat file `.md` baru di folder `content/products/`
- Setiap produk = 1 file terpisah
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
baseURL = 'https://ifan.web.id/'
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

### ⚡ Workflow Cepat (Menggunakan Tools)

#### Menambah Produk Baru
1. Jalankan `tools/create-product-content.bat` (Windows) atau `./tools/new-product.sh` (Linux/Mac)
2. Isi informasi yang diminta (slug, nama, harga)
3. Edit file yang dibuat untuk melengkapi deskripsi
4. Upload gambar ke `static/images/products/`
5. Commit & push ke repository

#### Menambah Postingan Baru
1. Jalankan `tools/create-post-content.bat` (Windows) atau `./tools/new-post.sh` (Linux/Mac)
2. Isi informasi yang diminta (slug, judul, tags, gambar)
3. Edit file yang dibuat untuk melengkapi konten
4. Commit & push ke repository

#### Validasi Konten
1. Jalankan `python tools/check-products.py` untuk cek produk
2. Jalankan `python tools/check-posts.py` untuk cek postingan
3. Perbaiki jika ada error atau warning

### 📝 Workflow Manual

#### Menambah Produk Baru
1. Buat file `content/products/nama-produk.md`
2. Isi frontmatter dan konten sesuai format
3. Upload gambar ke `static/images/products/`
4. Commit & push ke repository

#### Menambah Postingan Baru
1. Buat file `content/posts/judul-post.md`
2. Isi frontmatter dan konten
3. Commit & push ke repository

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
3. Contact: **Ifan Irfansyah** - [ifan.web.id](https://ifan.web.id)

## 📄 File Penting

- `hugo.toml` → Konfigurasi utama
- `data/links.yaml` → Link navigasi
- `content/posts/` → Artikel blog
- `content/products/` → Halaman produk (sistem baru)
- `static/css/` → Styling website
- `layouts/` → Template HTML

## 🛠️ Tools & Scripts

- `tools/create-product-content.bat` → Windows tool untuk produk
- `tools/create-post-content.bat` → Windows tool untuk postingan
- `tools/new-product.sh` → Linux/Mac tool untuk produk
- `tools/new-post.sh` → Linux/Mac tool untuk postingan
- `tools/check-products.py` → Validasi produk
- `tools/check-posts.py` → Validasi postingan
- `CARA-TAMBAH-PRODUK.md` → Panduan lengkap produk
- `CARA-TAMBAH-POSTINGAN.md` → Panduan lengkap postingan

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
---


## 👨‍💻 Developer

**Ifan Irfansyah**  
🌐 Website: [ifan.web.id](https://ifan.web.id)  
📧 Email: [hi@ifan.web.id](mailto:hi@ifan.web.id)

---

*Website ini dibuat dengan ❤️ menggunakan Hugo Static Site Generator*