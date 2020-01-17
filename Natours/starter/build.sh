node-sass sass/main.scss css/style.comp.css;
concat -o css/style.concat.css css/icon-font.css css/style.comp.css;
postcss --use autoprefixer -b 'last 10 versions' css/style.concat.css -o css/style.prefix.css;
node-sass css/style.prefix.css css/style.css --output-style compressed;