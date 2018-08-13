#!/bin/sh
# Copyright 2017, 2018. DOCTALES. All rights reserved.
# See the accompanying LICENSE file for applicable license.

# DITA-OT Version
VERSION="3.0.4"

zip -r org.doctales.schematron.zip . -x *.zip* *.git/* *temp/* *out/*
curl -LO 'https://github.com/dita-ot/dita-ot/releases/download/$VERSION/dita-ot-$VERSION.zip'
unzip -q dita-ot-$VERSION.zip
chmod +x dita-ot-$VERSION/bin/dita
chmod +x dita-ot-$VERSION/bin/ant
dita-ot-$VERSION/bin/dita --install https://github.com/doctales/org.doctales.ant-contrib/archive/master.zip
dita-ot-$VERSION/bin/dita --install org.doctales.schematron.zip
BASEDIR=$(dirname "$0")
echo "Start Ant test"
dita-ot-$VERSION/bin/ant -f build_test.xml -Ddita.dir=dita-ot
echo "Start DITA-OT test"
dita-ot-$VERSION/bin/dita --input samples/sample.ditamap --format pdf2 -Dschematron.topic.validation.files=../rules/topic-validation.sch,../rules/topic-terminology.sch -DfailOnError.fatal=true -DfailOnError.error=true --verbose