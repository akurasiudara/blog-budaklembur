# 📝 Cara Menambah Postingan Blog

Panduan lengkap untuk menambahkan postingan blog baru di website Budak Lembur.

## 🚀 Cara Cepat (Menggunakan Tools)

### Windows (Batch File)
```bash
# Jalankan script otomatis
create-post-content.bat
```

### Linux/Mac (Shell Script)
```bash
# Beri permission dulu (hanya sekali)
chmod +x new-post.sh

# Jalankan script
./new-post.sh
```

## 📋 Langkah Manual

### 1. Buat File Postingan
Buat file baru di folder `content/posts/` dengan nama `slug-postingan.md`

Contoh: `content/posts/tutorial-hugo-pemula.md`

### 2. Tambahkan Front Matter
```yaml
---
title: "Tutorial Hugo untuk Pemula"
date: 2025-11-03T10:30:00+07:00
draft: false
tags: ["Tutorial", "Hugo", "Web Development"]
image: "https://example.com/gambar.jpg"
---
```

### 3. Tulis Konten
```markdown
# Tutorial Hugo untuk Pemula

Konten postingan Anda di sini...

## Subjudul 1
Penjelasan detail...

## Subjudul 2
Informasi tambahan...
```

## 🔧 Tools yang Tersedia

| Tool | Platform | Fungsi |
|------|----------|--------|
| `create-post-content.bat` | Windows | Membuat postingan baru |
| `new-post.sh` | Linux/Mac | Membuat postingan baru |
| `check-posts.py` | Semua | Validasi postingan |

## 📊 Validasi Postingan

Gunakan script Python untuk mengecek postingan:

```bash
python check-posts.py
```

Script ini akan mengecek:
- ✅ Front matter yang valid
- 📝 Field wajib (title, date, draft)
- 🏷️ Tags (opsional)
- 🖼️ Gambar (opsional)
- 📊 Jumlah kata
- 🚧 Status draft/published

## 📁 Struktur File

```
content/
└── posts/
    ├── postingan-pertama.md
    ├── tutorial-hugo.md
    └── tips-coding.md

static/
└── images/
    └── posts/
        ├── gambar-1.jpg
        └── gambar-2.png
```

## 🎨 Format Konten

### Heading
```markdown
# Heading 1
## Heading 2
### Heading 3
```

### List
```markdown
- Item 1
- Item 2
- Item 3

1. Numbered item 1
2. Numbered item 2
```

### Link dan Gambar
```markdown
[Link text](https://example.com)
![Alt text](/images/posts/gambar.jpg)
```

### Code Block
```markdown
```javascript
function hello() {
    console.log("Hello World!");
}
```
```

## 🚀 Testing dan Deploy

### 1. Test Lokal
```bash
hugo server
```
Buka http://localhost:1313

### 2. Build untuk Production
```bash
hugo
```

### 3. Deploy Otomatis
Push ke GitHub, otomatis deploy ke Cloudflare Pages.

## 💡 Tips dan Best Practices

### Content
- ✅ Gunakan judul yang menarik dan SEO-friendly
- ✅ Tambahkan tags yang relevan
- ✅ Minimal 100-200 kata per postingan
- ✅ Gunakan heading untuk struktur yang jelas
- ✅ Tambahkan gambar untuk visual yang menarik

### SEO
- ✅ Slug URL yang bersih (tanpa spasi, huruf kecil)
- ✅ Meta description di front matter
- ✅ Alt text untuk gambar
- ✅ Internal linking ke postingan lain

### Gambar
- ✅ Ukuran optimal: 1200x630px untuk featured image
- ✅ Format: JPG untuk foto, PNG untuk grafik
- ✅ Kompres gambar untuk loading yang cepat
- ✅ Gunakan CDN atau hosting gambar eksternal

## 🔄 Workflow Recommended

1. **Buat draft** dengan `draft: true`
2. **Tulis konten** lengkap
3. **Review** dengan `check-posts.py`
4. **Test lokal** dengan `hugo server`
5. **Publish** dengan mengubah `draft: false`
6. **Push ke GitHub** untuk deploy otomatis

## 🆘 Troubleshooting

### Postingan tidak muncul
- Cek `draft: false` di front matter
- Pastikan tanggal tidak di masa depan
- Validasi dengan `check-posts.py`

### Error saat build
- Cek syntax YAML di front matter
- Pastikan tidak ada karakter khusus di title
- Validasi markdown syntax

### Gambar tidak tampil
- Cek path gambar relatif ke `/static/`
- Pastikan file gambar ada
- Cek permission file

## 📞 Bantuan

Jika ada masalah, cek:
1. File `README.md` untuk info umum
2. File `DEPLOYMENT.md` untuk masalah deploy
3. Script `check-posts.py` untuk validasi