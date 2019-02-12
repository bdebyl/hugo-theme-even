SASS			= /usr/bin/sassc
SASS_STYLE		= compressed # (nested, expanded, compact, compressed)
CSS_INPUT_FILE	= `pwd`/src/css/style.scss
CSS_OUTPUT_FILE	= `pwd`/static/dist/style.css

.PHONY: css
css:
	@echo "Rebuilding ${CSS_OUTPUT_FILE}..."
	@${SASS} -t ${SASS_STYLE} ${CSS_INPUT_FILE} ${CSS_OUTPUT_FILE}
	@echo "Done!"
