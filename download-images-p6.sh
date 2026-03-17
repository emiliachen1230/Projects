#!/bin/bash
# Run inside your portfolio folder (where img/ already exists, or it will be created).
# Downloads all images for project-six.html.

mkdir -p img

# Project Six CDN release
P6="https://cdn.animaapp.com/projects/69b2c1d7f461ade7fa0e7533/releases/69b81e18cda91df552315da9/img"

# Shared CDN releases
P5="https://cdn.animaapp.com/projects/69b2c1d7f461ade7fa0e7533/releases/69b81356cda91df552315d79/img"
SHARED="https://cdn.animaapp.com/projects/69b2c1d7f461ade7fa0e7533/releases/69b7eb6f25c50131a50ae394/img"

echo "Downloading Project Six images..."

# Hero
curl -s -o "img/p6-image-332.png"   "$P6/image-332.png"

# Full overview
curl -s -o "img/p6-image-333.png"   "$P6/image-333.png"

# Motivation icon (tall/narrow)
curl -s -o "img/p6-image-334.png"   "$P6/image-334.png"

# Design purpose / user / environment
curl -s -o "img/p6-image-335.png"   "$P6/image-335.png"
curl -s -o "img/p6-image-336.png"   "$P6/image-336.png"
curl -s -o "img/p6-image-337.png"   "$P6/image-337.png"

# Goal icon (shared from p5 release)
curl -s -o "img/p6-image-304.png"   "$P5/image-304.png"

# Ideation SVGs
curl -s -o "img/p6-frame-66.svg"    "$P6/frame-66.svg"
curl -s -o "img/p6-frame-70.svg"    "$P6/frame-70.svg"

# Shared logo & social icons (skip if already present)
[ -f img/logo.svg ]     || curl -s -o "img/logo.svg"     "$SHARED/logo.svg"
[ -f img/vector.svg ]   || curl -s -o "img/vector.svg"   "$SHARED/vector.svg"
[ -f img/vector-1.svg ] || curl -s -o "img/vector-1.svg" "$SHARED/vector-1.svg"
[ -f img/vector-3.svg ] || curl -s -o "img/vector-3.svg" "$SHARED/vector-3.svg"

echo ""
echo "Done! $(ls img/p6-* 2>/dev/null | wc -l) project-six files downloaded."
