#!/bin/bash
# Script untuk membuat produk baru (Linux/Mac)

echo "🛍️ Membuat produk baru..."
echo

read -p "Masukkan slug produk (contoh: nama-produk-baru): " slug
read -p "Masukkan nama produk (contoh: Nama Produk Baru): " title

# Buat file content menggunakan Hugo
hugo new "products/${slug}.md"

echo
echo "✅ File berhasil dibuat: content/products/${slug}.md"
echo
echo "📝 Langkah selanjutnya:"
echo "1. Edit data/products.yaml untuk menambah data produk"
echo "2. Upload gambar ke static/images/products/"
echo "3. Test dengan: hugo server"
echo