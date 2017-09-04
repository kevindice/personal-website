sass --scss assets/sass/main.scss > assets/css/main.css
sass --scss assets/sass/ie8.scss > assets/css/ie8.css
sass --scss assets/sass/ie9.scss > assets/css/ie9.css
cp -r --parents assets/css dist
cp -r --parents assets/fonts dist
cp -r --parents assets/js dist
cp -r --parents images dist
cp -r --parents loading-animation dist
cp *resume*.pdf
for i in *.html; do
    [ -f "$i" ] || break
    echo "$i"
    nunjucks -u "$i" -o dist
done
