#!/bin/bash
cd `dirname $0`
for i in src/*.md;do j=${i#src/};pandoc $i -f markdown_github+definition_lists+pandoc_title_block -t html5 --template=template/pandoc_template_bootstrap.html -c assets/bootstrap/css/bootstrap.min.css -c assets/bootstrap-docs/docs.min.css -c assets/dashboard.css --toc --toc-depth=6 -s -o html/${j%.md}.html;done
