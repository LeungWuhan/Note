#!/usr/bin/env zsh

# ==========================================
# 本地极简备份脚本 (Zsh 版 - 白名单模式)
# 说明：只同步核心配置、密钥和个人数据
# ==========================================

# 【必须修改】本地备份目标目录
DEST_DIR="/mnt/backup/root_configs/"

# 检查目标目录是否存在，不存在则创建
if [[ ! -d "$DEST_DIR" ]]; then
    print "目标目录 $DEST_DIR 不存在，正在创建..."
    mkdir -p "$DEST_DIR"
fi

print "=========================================="
print "开始本地极简同步：/root/ -> $DEST_DIR"
print "=========================================="

# 执行 rsync 白名单同步
rsync -avh \
  --include='/.zshrc' \
  --include='/.zshenv' \
  --include='/.zprofile' \
  --include='/.zlogin' \
  --include='/.zlogout' \
  --include='/.myZsh/***' \
  --include='/.ssh/***' \
  --include='/.gnupg/***' \
  --include='/.vim/***' \
  --include='/.tmux/***' \
  --include='/.pi/settings.json' \
  --include='/.pi/extensions/***' \
  --include='/.pi/skills/***' \
  --include='/.pi/AGENTS.md' \
  --include='/.markDownNote/***' \
  --include='/.Backup/***' \
  --exclude='*' \
  /root/ "$DEST_DIR"

# 检查同步结果（Zsh 中 $? 依然有效）
if [[ $? -eq 0 ]]; then
    print "=========================================="
    print "✅ 同步成功！"
    print "📊 当前备份体积："
    du -sh "$DEST_DIR"
else
    print "=========================================="
    print "❌ 同步失败，请检查路径或权限。"
fi