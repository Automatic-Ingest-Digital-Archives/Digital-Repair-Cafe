# Thoughts

## Workflows

### Disk image format

#### Raw

* FOSS
* not possible to add metadata
* no repair mechanisms

#### EO1

* embedded metadata
* proprietary (but FOSS library to read and write files)
* repair mechanisms

### Capture

#### Bitcurator tools

##### Pro

* free open source software
* user community in libraries and archives
* maintainer (university)
* create own workflows

##### Downsides

* sometimes faster with commercial tools
* root access
* linux: more complex?

#### FTK Imager

##### Pro

* ease in use
* fast (imaging + metadata + export in one software)
* free software
* can read and analyze a great bunch of disk / disk images
* file viewer
* can better handle audio disks (.cue/.bin-files)

##### Downsides

* commercial software > will this stay free software?
* not configurably
* Windows environment > no support of bash tools

### Analyzing and processing

#### Disk Image Processor (CCA)

##### Pros

* GUI
* analyzes a folder of disk images (Brunnhilde scan, file system, tree output, carved files (optional))
* can create SIP bags per disk image
* Python script > developer (e.g. of the consortium, PACKED/VIAA, ....) can easily maintain this
* DFXML is a standard for forensics
* uses built-in bitcurator tools
* wide range of supported file systems and disk image types
* FOSS

##### Downsides

* no maintainer atm
* code is a bit messy
* Pyhon dependency
* DFXML: do we want to use this?
* BulkExtractor n/a for non-US content

#### Own shell script

##### Pros

* bash > no dependencies, built-in in Linux
* lightweight
* easy to maintain
* FOSS (for now ;))

##### Downsides

* no GUI
* who is going to maintain this?
* a limited range of supported file systems and disk image types

#### Bitcurator GUI tools

##### Pros

* official maintainer
* FOSS
* GUI
* ease in use

##### Downsides

* not as fast as scripts
* lot of manual work

## Literature

* [Princeton](https://blogs.princeton.edu/techsvs/tag/kryoflux/)
