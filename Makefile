SASS        = /usr/bin/sassc
SASS_STYLE  = compressed # (nested, expanded, compact, compressed)

SCSS_FILES  = $(shell find src/ -type f -name *.scss)
SCSS_IN     = src/css/style.scss
CSS_OUT     = static/dist/style.css

${CSS_OUT}: ${SCSS_FILES}
	@echo "Rebuilding ${CSS_OUT}..."
	@${SASS} -t ${SASS_STYLE} ${SCSS_IN} ${CSS_OUT}
	@echo "Done!"

clean:
	rm -v ${CSS_OUT}
.PHONY: clean
