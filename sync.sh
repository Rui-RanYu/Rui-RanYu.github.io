#!/bin/bash

# 🚀 Personal Blog - Quick Sync Script
# Use this script on your personal device to sync changes

echo "================================================"
echo "🚀 Ruiran Yu's Personal Blog - Sync Script"
echo "================================================"
echo ""

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if we're in the right directory
if [ ! -f "hugo.toml" ]; then
    echo "❌ Error: Please run this script from the PersonalBlog directory"
    exit 1
fi

echo "${BLUE}📋 Status Check...${NC}"
git status
echo ""

echo "${BLUE}📦 Adding all changes...${NC}"
git add .
echo "✅ Changes staged"
echo ""

echo "${BLUE}💾 Creating commit...${NC}"
read -p "Enter commit message (or press Enter for default): " commit_msg

if [ -z "$commit_msg" ]; then
    commit_msg="Update personal blog content and theme"
fi

git commit -m "$commit_msg"
echo "✅ Changes committed"
echo ""

echo "${BLUE}🚀 Pushing to GitHub...${NC}"
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "${GREEN}================================================${NC}"
    echo "${GREEN}✅ SUCCESS! Changes pushed to GitHub${NC}"
    echo "${GREEN}================================================${NC}"
    echo ""
    echo "🌐 Your site will be updated at:"
    echo "   https://Rui-RanYu.github.io/"
    echo ""
    echo "⏱️  GitHub Pages usually takes 1-2 minutes to rebuild"
else
    echo ""
    echo "❌ Push failed. Please check your internet connection and GitHub access."
fi

