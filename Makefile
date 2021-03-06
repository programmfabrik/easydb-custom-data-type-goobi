PLUGIN_NAME = custom-data-type-goobi

L10N_FILES = easydb-library/src/commons.l10n.csv \
    l10n/$(PLUGIN_NAME).csv
L10N_GOOGLE_KEY = 1ux8r_kpskdAwTaTjqrk92up5eyyILkpsv4k96QltmI0
L10N_GOOGLE_GID = 1356825252

INSTALL_FILES = \
	$(WEB)/l10n/cultures.json \
	$(WEB)/l10n/de-DE.json \
	$(WEB)/l10n/en-US.json \
	$(JS) \
  $(CSS) \
	CustomDataTypeGoobi.config.yml

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
