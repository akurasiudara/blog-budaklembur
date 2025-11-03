#!/bin/bash

echo "📝 Membuat postingan blog baru..."
echo

# Baca input dari user
read -p "Masukkan slug postingan (contoh: judul-postingan-baru): " slug
read -p "Masukkan judul postingan (contoh: Judul Postingan Baru): " title
read -p "Masukkan tags (pisahkan dengan koma, contoh: Web Development, Tutorial): " tags
read -p "Masukkan URL gambar (opsional, tekan Enter untuk skip): " image

# Buat folder jika belum ada
mkdir -p "content/posts"

# Dapatkan tanggal dan waktu saat ini dalam format Hugo
current_date=$(date '+%Y-%m-%dT%H:%M:%S+07:00')

# Buat file content lengkap
cat > "content/posts/${slug}.md" << EOF
---
title: "${title}"
date: ${current_date}
draft: false
EOF

# Tambahkan tags jika ada
if [ ! -z "$tags" ]; then
    # Convert comma-separated tags to YAML array format
    formatted_tags=$(echo "$tags" | sed 's/,/", "/g' | sed 's/^/["/' | sed 's/$/"]/')
    echo "tags: ${formatted_tags}" >> "content/posts/${slug}.md"
fi

# Tambahkan image jika ada
if [ ! -z "$image" ]; then
    echo "image: \"${image}\"" >> "content/posts/${slug}.md"
fi

# Tambahkan konten template
cat >> "content/posts/${slug}.md" << EOF
---

# ${title}

Tulis konten postingan Anda di sini...

## Subjudul 1

Paragraf pertama dengan penjelasan detail.

## Subjudul 2

Paragraf kedua dengan informasi tambahan.

### Tips atau Poin Penting:
- Poin 1
- Poin 2  
- Poin 3

## Kesimpulan

Rangkuman atau kesimpulan dari postingan ini.

EOF

echo
echo "✅ File berhasil dibuat: content/posts/${slug}.md"
echo
echo "📝 Langkah selanjutnya:"
echo "1. Edit file yang baru dibuat untuk melengkapi konten"
echo "2. Jika ada gambar, upload ke folder static/images/posts/"
echo "3. Test dengan: hugo server"
echo "4. Jika sudah siap, ubah draft: false menjadi draft: true untuk publish"
echo