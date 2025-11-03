# 🚀 Panduan Deployment ke GitHub + Cloudflare Pages

## 📋 Persiapan

### 1. Setup Repository GitHub
```bash
# Inisialisasi Git (jika belum)
git init
git add .
git commit -m "Initial commit"

# Tambahkan remote GitHub
git remote add origin https://github.com/username/budaklembur.git
git branch -M main
git push -u origin main
```

### 2. Struktur File untuk Deployment
```
budaklembur/
├── .github/workflows/hugo.yml    # GitHub Actions
├── static/_redirects              # Cloudflare redirects
├── wrangler.toml                 # Cloudflare config
├── hugo.toml                     # Hugo config
└── ... (file lainnya)
```

## ⚙️ Setup Cloudflare Pages

### Langkah 1: Login ke Cloudflare Dashboard
1. Buka [Cloudflare Dashboard](https://dash.cloudflare.com/)
2. Pilih akun Anda
3. Klik **"Pages"** di sidebar

### Langkah 2: Connect Repository
1. Klik **"Create a project"**
2. Pilih **"Connect to Git"**
3. Authorize Cloudflare untuk akses GitHub
4. Pilih repository `budaklembur`

### Langkah 3: Configure Build Settings
```
Framework preset: Hugo
Build command: hugo --gc --minify
Build output directory: public
Root directory: / (leave empty)
```

### Langkah 4: Environment Variables
Tambahkan environment variables:
```
HUGO_VERSION = 0.120.4
HUGO_ENV = production
```

### Langkah 5: Deploy
1. Klik **"Save and Deploy"**
2. Tunggu build selesai (2-5 menit)
3. Website akan tersedia di `https://budaklembur.pages.dev`

## 🔧 Konfigurasi Lanjutan

### Custom Domain (Opsional)
1. Di Cloudflare Pages dashboard
2. Klik **"Custom domains"**
3. Tambahkan domain Anda
4. Update DNS records sesuai instruksi

### Build Optimization
Edit `hugo.toml` untuk production:
```toml
baseURL = 'https://budaklembur.pages.dev/'
languageCode = 'id-id'
title = 'Budak Lembur'

# Production settings
enableGitInfo = true
enableRobotsTXT = true

[minify]
  disableXML = true
  minifyOutput = true

[params]
  subtitle = 'Selamat datang di ruang digital saya'
```

## 🔄 Workflow Development

### 1. Local Development
```bash
# Clone repository
git clone https://github.com/username/budaklembur.git
cd budaklembur

# Install Hugo (jika belum)
# Windows: scoop install hugo-extended
# Mac: brew install hugo
# Linux: snap install hugo --channel=extended

# Run development server
hugo server

# Build for production
hugo --gc --minify
```

### 2. Deploy Changes
```bash
# Edit content/posts/ atau data/
# Test locally
hugo server

# Commit dan push
git add .
git commit -m "Add new post: judul-post"
git push origin main

# Cloudflare Pages otomatis build & deploy
```

## 📊 Monitoring & Analytics

### Cloudflare Analytics
1. Dashboard Cloudflare Pages
2. Tab **"Analytics"**
3. Monitor traffic, performance, errors

### Build Logs
1. Dashboard Cloudflare Pages
2. Tab **"Deployments"**
3. Klik deployment untuk lihat logs

## 🛠️ Troubleshooting

### Build Failed
**Cek:**
1. Hugo version di environment variables
2. Syntax error di YAML/Markdown files
3. Build logs di Cloudflare dashboard

**Common Issues:**
```bash
# Error: YAML syntax
# Fix: Cek indentasi di data/*.yaml

# Error: Markdown frontmatter
# Fix: Pastikan --- di awal dan akhir frontmatter

# Error: Hugo version
# Fix: Set HUGO_VERSION = 0.120.4 di environment variables
```

### Website Tidak Update
1. ✅ Cek apakah commit sudah push ke GitHub
2. ✅ Cek build status di Cloudflare Pages
3. ✅ Clear browser cache (Ctrl+F5)
4. ✅ Tunggu 2-5 menit untuk propagasi

### Performance Issues
1. Optimize images (compress, WebP format)
2. Enable Cloudflare caching
3. Use CDN untuk assets external

## 🔐 Security & Best Practices

### Environment Variables
```
HUGO_VERSION = 0.120.4
HUGO_ENV = production
HUGO_BASEURL = https://budaklembur.pages.dev
```

### Branch Protection
1. GitHub repository settings
2. Branches → Add rule
3. Protect `main` branch
4. Require pull request reviews

### Backup Strategy
- Repository di GitHub = backup otomatis
- Download backup: `git clone <repo-url>`
- Export content: copy folder `content/` dan `data/`

## 📈 Optimization Tips

### Performance
```toml
# hugo.toml
[imaging]
  resampleFilter = "lanczos"
  quality = 85
  
[caches]
  [caches.getjson]
    dir = ":cacheDir/:project"
    maxAge = "1h"
```

### SEO
```yaml
# Front matter posts
title: "Judul SEO Friendly"
description: "Meta description 150-160 karakter"
keywords: ["keyword1", "keyword2"]
```

### Speed
- Compress images sebelum upload
- Use WebP format untuk gambar
- Minify CSS/JS (sudah otomatis)
- Enable Cloudflare caching

## 🎯 Next Steps

1. **Setup Custom Domain** (opsional)
2. **Configure Analytics** (Google Analytics/Cloudflare)
3. **Setup Contact Form** (Cloudflare Forms/Netlify Forms)
4. **Add Search Functionality** (Algolia/Fuse.js)
5. **Setup Newsletter** (ConvertKit/Mailchimp)

---

## 📞 Support

**Cloudflare Pages Docs:** https://developers.cloudflare.com/pages/  
**Hugo Documentation:** https://gohugo.io/documentation/  
**GitHub Actions:** https://docs.github.com/en/actions

**Estimated Costs:**
- GitHub: Free (public repo)
- Cloudflare Pages: Free (100k requests/month)
- Custom Domain: ~$10-15/year (opsional)

---

**🎉 Selamat! Website Anda siap online dengan performa tinggi dan gratis!**