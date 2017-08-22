![DOCTALES Logo](https://doctales.github.io/images/doctales-logo-without-subtitle.svg)

- - - -

org.doctales.schematron
===========================

[![Build Status](https://travis-ci.org/doctales/org.doctales.schematron.svg?branch=master)](https://travis-ci.org/doctales/org.doctales.schematron)
[![license](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)

**org.doctales.schematron** is a plugin for the **[DITA Open Toolkit (DITA-OT)](http://www.dita-ot.org)**. It uses the `depend.preprocess.post` extension point to validate DITA maps and topics after the *preprocessing phase*. The plugin uses [ph-schematron](https://github.com/phax/ph-schematron) for validation.

**ph-schematron** is a Java library that validates XML documents via ISO Schematron. It is licensed under Apache 2.0 license.

## Parameters

| Parameter | Description |
|:----------|:------------|
| **schematron.processing.engine** | Schematron processing engine: `pure` (default), `schematron` or `xslt` |
| **schematron.map.validation.files** | Comma separated list of Schematron files for map validation |
| **schematron.topic.validation.files** | Comma separated list of Schematron files for topic validation |

## Installation

You can simply install the plugin to the **DITA-OT** via `dita --install`.

```
dita --install https://github.com/doctales/org.doctales.schematron/archive/master.zip
```


## Usage

You just have to set the `schematron.topic.validation.files` or `schematron.map.validation.files` property or both of them and then run a DITA-OT publication as usual.

```
dita --input my.ditamap \
     --format pdf2 \
     --verbose \
     -Dschematron.topic.validation.files=topic-validation-1.sch,topic-validation-2.sch \
     -Dschematron.map.validation.files=map-validation.sch
```
