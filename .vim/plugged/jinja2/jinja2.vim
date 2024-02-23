syn region  jinja2_var       start =+{{+ end=+}}+
syn region  jinja2_statement start =+{%+ end=+%}+
syn region  jinja2_comment   start =+{#+ end=+#}+

highlight jinja2_var ctermfg=42
highlight jinja2_statement ctermfg=176
highlight jinja2_comment ctermfg=107
