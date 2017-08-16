#!/bin/sh
# Copyright 2017 DOCTALES. All rights reserved.
# See the accompanying LICENSE file for applicable license.

zip -r org.doctales.schematron.zip . -x *.zip* *.git/* *temp/* *out/*
curl -LO https://github.com/dita-ot/dita-ot/releases/download/2.5.2/dita-ot-2.5.2.zip
unzip -q dita-ot-2.5.2.zip
mv dita-ot*/ dita-ot/
chmod +x dita-ot/bin/dita
dita-ot/bin/dita --install org.doctales.schematron.zip
ls -la
dita-ot/bin/dita --input samples/sample.ditamap --format pdf2 -Dschematron.topic.validation.file=rules/topic-validation.sch --verbose
