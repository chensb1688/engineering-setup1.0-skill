#!/bin/bash
# Engineering Setup — 初始化脚本
# 在项目根目录运行，生成标配文件骨架

set -e

# 项目名（默认取当前目录名）
PROJECT_NAME="${1:-$(basename "$PWD")}"

echo "========================================="
echo "  Engineering Setup — 初始化"
echo "  项目: $PROJECT_NAME"
echo "========================================="
echo ""

# 创建目录结构
mkdir -p data src scripts docs

# 生成标配文件
for file in ENTRY.md work_log.md tasks.md pitfalls.md README.md; do
    if [ -f "$file" ]; then
        echo "  ⏭️  已存在: $file"
    else
        touch "$file"
        echo "  ✅ 创建: $file"
    fi
done

# standards.md 和 report.md 按需创建，不自动生成
echo ""
echo "  📌 standards.md（按需）— 有规范才建"
echo "  📌 report.md（按需）— 里程碑时产出"
echo ""
echo "  下一步：用模板替换 {占位符}"
echo "========================================="
