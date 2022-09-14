
echo "Raking through README.md files..."

find ~/Kirkja/repos/kirkja/Client/ -name "README.md" -exec ./magic_docs.sh {} ";"

echo "...finished raking."
