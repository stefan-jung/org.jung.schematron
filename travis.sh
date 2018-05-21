#!/usr/bin/env bash
# Copyright 2017, 2018. DOCTALES. All rights reserved.
# See the accompanying LICENSE file for applicable license.
zip -r org.doctales.schematron.zip . -x *.zip* *.git/* *temp/* *out/*
curl -LO 'https://github.com/dita-ot/dita-ot/releases/download/3.0.4/dita-ot-3.0.4.zip'
unzip -q dita-ot-3.0.4.zip
mv dita-ot*/ dita-ot/
chmod +x dita-ot/bin/dita
dita-ot/bin/dita --install https://github.com/doctales/org.doctales.ant-contrib/archive/master.zip
dita-ot/bin/dita --install org.doctales.schematron.zip
BASEDIR=$(dirname "$0")
echo "Start Ant test"
dita-ot/bin/ant -f build_test.xml -Ddita.dir=dita-ot
echo "Start DITA-OT test"
dita-ot/bin/dita --input samples/sample.ditamap --format pdf2 -Dschematron.topic.validation.files=../rules/topic-validation.sch,../rules/topic-terminology.sch -DfailOnError.fatal=true -DfailOnError.error=true --verbose