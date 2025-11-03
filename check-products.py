#!/usr/bin/env python3
"""
Script untuk mengecek dan membuat file content produk yang hilang
"""

import yaml
import os
from pathlib import Path

def load_products():
    """Load products from data/products.yaml"""
    with open('data/products.yaml', 'r', encoding='utf-8') as f:
        return yaml.safe_load(f)

def check_content_files(products):
    """Check if content files exist for all products"""
    missing_files = []
    
    for product in products:
        slug = product['slug']
        content_file = f"content/products/{slug}.md"
        
        if not os.path.exists(content_file):
            missing_files.append({
                'slug': slug,
                'title': product['title'],
                'file': content_file
            })
    
    return missing_files

def create_content_file(slug, title):
    """Create content file for product"""
    content_dir = Path("content/products")
    content_dir.mkdir(parents=True, exist_ok=True)
    
    content = f"""---
title: "{title}"
slug: "{slug}"
---"""
    
    file_path = content_dir / f"{slug}.md"
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"✅ Created: {file_path}")

def main():
    print("🔍 Checking products...")
    
    # Load products
    try:
        products = load_products()
        print(f"📦 Found {len(products)} products in data/products.yaml")
    except Exception as e:
        print(f"❌ Error loading products.yaml: {e}")
        return
    
    # Check missing content files
    missing = check_content_files(products)
    
    if not missing:
        print("✅ All products have content files!")
        return
    
    print(f"⚠️  Found {len(missing)} missing content files:")
    for item in missing:
        print(f"   - {item['file']}")
    
    # Create missing files
    print("\n🔧 Creating missing files...")
    for item in missing:
        create_content_file(item['slug'], item['title'])
    
    print(f"\n🎉 Done! Created {len(missing)} content files.")
    print("💡 Run 'hugo server' to test the changes.")

if __name__ == "__main__":
    main()