#!/bin/bash
# Run this script inside your project-five/ folder.
# It creates an img/ subfolder and downloads all images.

mkdir -p img

# Project Five images (new release)
P5="https://cdn.animaapp.com/projects/69b2c1d7f461ade7fa0e7533/releases/69b81356cda91df552315d79/img"

# Shared assets (from project four's release — logo, social icons, nav icons)
SHARED="https://cdn.animaapp.com/projects/69b2c1d7f461ade7fa0e7533/releases/69b7eb6f25c50131a50ae394/img"

echo "Downloading Project Five images..."

# Hero & overview
curl -s -o "img/p5-image-219.png"  "$P5/image-219.png"
curl -s -o "img/p5-image-301.png"  "$P5/image-301.png"

# Intro section
curl -s -o "img/p5-image-223.png"  "$SHARED/image-223.png"

# Design purpose / user / env
curl -s -o "img/p5-image-302.png"  "$P5/image-302.png"
curl -s -o "img/p5-image-303.png"  "$P5/image-303.png"
curl -s -o "img/p5-image-292.png"  "$P5/image-292.png"

# Goal icon
curl -s -o "img/p5-image-304.png"  "$P5/image-304.png"

# Ideation SVG board
curl -s -o "img/p5-frame-1517.svg" "$P5/frame-1517.svg"

# Kettle usage / pour
curl -s -o "img/p5-image-313.png"  "$P5/image-313.png"
curl -s -o "img/p5-image-314.png"  "$P5/image-314.png"

# Product detail diagrams
curl -s -o "img/p5-image-316.png"  "$P5/image-316.png"
curl -s -o "img/p5-image-317.png"  "$P5/image-317.png"
curl -s -o "img/p5-image-318.png"  "$P5/image-318.png"
curl -s -o "img/p5-image-319.png"  "$P5/image-319-1.png"
curl -s -o "img/p5-image-320.png"  "$P5/image-320-1.png"
curl -s -o "img/p5-image-321.png"  "$P5/image-321-1.png"

# Full renders
curl -s -o "img/p5-image-315.png"  "$P5/image-315.png"
curl -s -o "img/p5-image-324.png"  "$P5/image-324.png"

# Colour swatches
curl -s -o "img/p5-image-325.png"  "$P5/image-325.png"
curl -s -o "img/p5-image-326.png"  "$P5/image-326.png"
curl -s -o "img/p5-image-327.png"  "$P5/image-327.png"

# More renders
curl -s -o "img/p5-image-322.png"  "$P5/image-322.png"
curl -s -o "img/p5-image-323.png"  "$P5/image-323.png"

# Final gallery
curl -s -o "img/p5-image-331.png"  "$P5/image-331.png"
curl -s -o "img/p5-image-328.png"  "$P5/image-328.png"
curl -s -o "img/p5-image-329.png"  "$P5/image-329.png"
curl -s -o "img/p5-image-330.png"  "$P5/image-330.png"

# Shared: logo & social icons (skip if already downloaded from project-four)
curl -s -o "img/logo.svg"      "$SHARED/logo.svg"
curl -s -o "img/vector.svg"    "$SHARED/vector.svg"
curl -s -o "img/vector-1.svg"  "$SHARED/vector-1.svg"
curl -s -o "img/vector-3.svg"  "$SHARED/vector-3.svg"

echo ""
echo "Done! $(ls img | wc -l) files in img/"
