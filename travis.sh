#!/bin/sh
# Copyright 2017 DOCTALES. All rights reserved.
# See the accompanying LICENSE file for applicable license.

zip -r org.doctales.schematron.zip . -x *.zip* *.git/* *temp/* *out/*
curl -LO https://s3-eu-west-1.amazonaws.com/dita-ot/dita-ot-develop.zip
unzip -q dita-ot-develop.zip
mv dita-ot*/ dita-ot/
chmod +x dita-ot/bin/dita
dita-ot/bin/dita -install org.doctales.schematron.zip
dita-ot/bin/dita --input samples/sample.ditamap --format pdf2 -Dschematron.topic.validation.file=rules/topic-validation.sch --verbose
