#!/bin/bash

# 检查参数数量
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_font.ttf> <output_font.woff2>"
    exit 1
fi

# 参数赋值
INPUT_FONT="$1"
SITE_DIR="../site"
CHAR_FILE="./used_chars.txt"

# 检查目录存在性
if [ ! -d "$SITE_DIR" ]; then
    echo "错误：站点目录 $SITE_DIR 不存在"
    exit 1
fi

rm -f "$CHAR_FILE"

grep -rh --include='*.html' --include='*.js' --include='*.css' '' "$SITE_DIR" | sort -u > "$CHAR_FILE"

# 执行字体子集化
pyftsubset "$INPUT_FONT" \
          --text-file="$CHAR_FILE" \
          --output-file="$INPUT_FONT" \
          --flavor=woff2 \
          --recommended-glyphs \
          --layout-features='*' \
          --glyph-names \
          --symbol-cmap \
          --legacy-cmap \
          --notdef-glyph \
          --notdef-outline \
          --ignore-missing-unicodes

# 检查执行结果
if [ $? -eq 0 ]; then
    echo "字体子集化成功！输出文件：$INPUT_FONT"
else
    echo "字体子集化失败！"
    exit 1
fi
