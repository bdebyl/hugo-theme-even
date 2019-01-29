SASS=/usr/bin/sassc
SASS_STYLE=compressed # (nested, expanded, compact, compressed)
CSS_INPUT_FILE=./src/css/style.scss
CSS_OUTPUT_FILE=./static/dist/style.css

css:
	@echo "Rebuilding ${CSS_OUTPUT_FILE}..."
	@${SASS} -t ${SASS_STYLE} ${CSS_INPUT_FILE} ${CSS_OUTPUT_FILE}
	@echo "Done!"

o# Default target for make (<=3.80)
.PHONY: default
default: css ;
