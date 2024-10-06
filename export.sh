PNG_COMMANDS=$(cat <<EOF
export-type:png;
export-dpi:300;
export-area:0:0:528:816;
export-background:#ffffffff;
export-filename:out/ssh-cheatsheet.png;
export-do;
EOF
)

PDF_COMMANDS=$(cat <<EOF
export-type:pdf;
export-area-page;
export-filename:out/ssh-cheatsheet-two.pdf;
export-do;
EOF
)

inkscape --actions="$PNG_COMMANDS" ssh-cheatsheet.svg
inkscape --actions="$PDF_COMMANDS" ssh-cheatsheet.svg
