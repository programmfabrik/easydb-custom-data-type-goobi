> This Plugin / Repo is being maintained by a community of developers.
There is no warranty given or bug fixing guarantee; especially not by
Programmfabrik GmbH. Please use the github issue tracking to report bugs
and self organize bug fixing. Feel free to directly contact the committing
developers.

# easydb-custom-data-type-goobi
Custom Data Type "goobi" for easydb

This is a plugin for [easyDB 5](http://5.easydb.de/) with Custom Data Type `CustomDataTypeGoobi` for references to entities to [Goobi workflow](<https://www.intranda.com/digiverso/goobi/>).

The Plugins uses <http://my-goobi.tld/api/processes/search> for the autocomplete-suggestions and additional informations about the goobi-processes.

## configuration

* Schema-settings:
  * goobi-field used for "Name"
  * goobi-field used for "URI"
* Mask-settings:
  * goobi-API-url
  * goobi-endpoint-token
  * Searchable goobi-projects (commaseparated)
  * Searchable metadatafields (commaseparated)

## saved data
* conceptName
    * Preferred label of the linked record
* conceptURI
    * URI to linked record
* _fulltext
    * easydb-fulltext
* _standard
    * easydb-standard

## sources

The source code of this plugin is managed in a git repository at <https://github.com/programmfabrik/easydb-custom-data-type-goobi>. Please use [the issue tracker](https://github.com/programmfabrik/easydb-custom-data-type-goobi/issues) for bug reports and feature requests!
