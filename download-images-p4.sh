#!/bin/bash
# Run this script in your project-four folder
# It will create an img/ subfolder and download all images

mkdir -p img
BASE="https://cdn.animaapp.com/projects/69b2c1d7f461ade7fa0e7533/releases/69b7eb6f25c50131a50ae394/img"

IMGS="image-219.png image-220.png image-220-1.png image-221.png image-222.png image-223.png image-224.png image-224-1.png image-225.png image-225-1.png image-226.png image-227.png image-228.png image-229.png image-230.png image-231.png image-232.png image-233.png image-234.png image-235.png image-236.png image-237.png image-238.png image-239.png image-240.png image-241.png image-242.png image-243.png image-244.png image-245.png image-246.png image-247.png image-248.png image-249.png image-250.png image-251.png image-252.png image-253.png image-254.png image-255.png image-256.png image-257.png image-258.png image-259.png image-260.png image-261.png image-262.png image-263.png image-264.png image-265.png image-266.png image-267.png image-268.png image-269.png image-270.png image-271.png image-272.png image-273.png image-274.png image-275.png image-276.png image-277.png image-278.png image-279.png image-280.png image-281.png image-282.png image-283.png image-284.png image-285.png image-286.png image-287.png image-288.png image-289.png image-290.png image-292-1.png image-293-1.png image-294.png image-295.png image-296.png image-297.png image-298.png image-299.png image-300.png logo.svg logo-1.svg vector.svg vector-1.svg vector-3.svg"

for img in $IMGS; do
  echo "Downloading $img..."
  curl -s -o "img/$img" "$BASE/$img"
done

echo ""
echo "✅ Done! $(ls img | wc -l) files downloaded to img/"
