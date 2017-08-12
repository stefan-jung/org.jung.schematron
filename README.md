org.doctales.schematron
=======================

**org.doctales.schematron** is a plugin for the [DITA Open Toolkit (DITA-OT)](http://www.dita-ot.org). It uses the `depend.preprocess.post` extension point to validate DITA maps and topics after the preprocessing phase. The plugin uses [ph-schematron](https://github.com/phax/ph-schematron) for validation.

**ph-schematron** is a Java library that validates XML documents via ISO Schematron. It is licensed under Apache 2.0 license.

## Parameters

| Parameter | Description |
|:----------|:------------|
| **schematron.processing.engine** | Sets the Schematron processing engine (`pure`, `schematron`, `xslt`) |
| **schematron.map.validation.file** | Schematron file for map validation |
| **schematron.topic.validation.file** | Schematron file for topic validation |