d2lbook build html
# d2lbook build linkcheck
# pandoc README.md -o _build/rst/README.rst --wrap none # --columns 500
sed -i.bak 's/|today\\|/|today|/g' _build/rst/README.rst
d2lbook build html
# FIXME
rm -rf _build/html/slides
rm -rf _build/html/notebooks
rm -rf _build/html/data
cp -r slides _build/html/
cp -r notebooks _build/html/
cp -r data _build/html/
mv _build/html/README.html _build/html/index.html
