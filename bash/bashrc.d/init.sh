# For each file in bashrc.d, source it
for file in ~/bashrc.d/config/*; do
    # shellcheck source=/dev/null
    . "$file"
done
