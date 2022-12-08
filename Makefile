PLUGIN_NAME = custom-data-type-goobi
PLUGIN_PATH = easydb-custom-data-type-goobi

L10N_FILES = easydb-library/src/commons.l10n.csv \
    l10n/$(PLUGIN_NAME).csv

INSTALL_FILES = \
	$(WEB)/l10n/cultures.json \
	$(WEB)/l10n/de-DE.json \
	$(WEB)/l10n/en-US.json \
	$(JS) \
  $(CSS) \
	manifest.yml

COFFEE_FILES = easydb-library/src/commons.coffee \
	src/webfrontend/CustomDataTypeGoobi.coffee

all: build

CSS_FILE = src/webfrontend/css/main.css

include easydb-library/tools/base-plugins.make

build: code buildinfojson

code: $(JS) $(L10N)
			mkdir -p build/webfrontend/css
			cat $(CSS_FILE) >> build/webfrontend/custom-data-type-goobi.css

clean: clean-base
