#!/usr/bin/env python3
"""
Script untuk mengecek dan memvalidasi postingan blog
"""

import os
import re
from pathlib import Path

def check_posts():
    """Cek semua file postingan di content/posts/"""
    posts_dir = Path("content/posts")
    
    if not posts_dir.exists():
        print("❌ Folder content/posts tidak ditemukan!")
        return
    
    print("📝 Mengecek postingan blog...")
    print("=" * 50)
    
    post_files = list(posts_dir.glob("*.md"))
    
    if not post_files:
        print("📭 Tidak ada postingan ditemukan di content/posts/")
        return
    
    print(f"📊 Ditemukan {len(post_files)} postingan:")
    print()
    
    for post_file in sorted(post_files):
        print(f"📄 {post_file.name}")
        
        try:
            with open(post_file, 'r', encoding='utf-8') as f:
                content = f.read()
            
            # Cek front matter
            if content.startswith('---'):
                front_matter_end = content.find('---', 3)
                if front_matter_end != -1:
                    front_matter = content[3:front_matter_end]
                    
                    # Cek field wajib
                    has_title = 'title:' in front_matter
                    has_date = 'date:' in front_matter
                    has_draft = 'draft:' in front_matter
                    
                    print(f"   ✅ Front matter: OK")
                    print(f"   📝 Title: {'✅' if has_title else '❌'}")
                    print(f"   📅 Date: {'✅' if has_date else '❌'}")
                    print(f"   📋 Draft: {'✅' if has_draft else '❌'}")
                    
                    # Cek apakah draft
                    if 'draft: true' in front_matter:
                        print(f"   🚧 Status: DRAFT (tidak akan dipublish)")
                    else:
                        print(f"   🌐 Status: PUBLISHED")
                    
                    # Cek tags
                    if 'tags:' in front_matter:
                        print(f"   🏷️  Tags: ✅")
                    else:
                        print(f"   🏷️  Tags: ⚠️  (opsional)")
                    
                    # Cek image
                    if 'image:' in front_matter:
                        print(f"   🖼️  Image: ✅")
                    else:
                        print(f"   🖼️  Image: ⚠️  (opsional)")
                    
                    # Cek panjang konten
                    body_content = content[front_matter_end + 3:].strip()
                    word_count = len(body_content.split())
                    print(f"   📊 Jumlah kata: {word_count}")
                    
                    if word_count < 50:
                        print(f"   ⚠️  Konten terlalu pendek (minimal 50 kata)")
                    
                else:
                    print(f"   ❌ Front matter tidak valid")
            else:
                print(f"   ❌ Tidak ada front matter")
                
        except Exception as e:
            print(f"   ❌ Error membaca file: {e}")
        
        print()
    
    print("=" * 50)
    print("✅ Pemeriksaan selesai!")
    print()
    print("💡 Tips:")
    print("- Pastikan semua postingan memiliki title, date, dan draft")
    print("- Ubah draft: true menjadi draft: false untuk mempublish")
    print("- Tambahkan tags untuk kategorisasi yang lebih baik")
    print("- Gunakan gambar untuk membuat postingan lebih menarik")

if __name__ == "__main__":
    check_posts()