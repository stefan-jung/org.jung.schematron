<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    queryBinding="xslt2">
   <sch:title>Terminology</sch:title>
   <sch:pattern>
      <sch:rule context="*/text()">
         <sch:report test="contains(/*/@xml:lang, 'en-GB') and matches(., '((\W|^)deprecated term(\W|$))', 'i')"
            role="warning"
                     sqf:fix="sqf1.099811387950805E14">The term 'deprecated term' is not allowed. Replace with an allowed term: 'allowed term'</sch:report>
         <sqf:group id="sqf1.099811387950805E14">
            <sqf:fix id="sqf6.8675032818730055E13">
               <sqf:description>
                  <sqf:title>Replace with an allowed term: 'allowed term'</sqf:title>
               </sqf:description>
               <sqf:stringReplace regex="(\b(deprecated term)\b)" select="'allowed term'"/>
               <sqf:stringReplace regex="(\b(Deprecated term)\b)" select="'Allowed term'"/>
            </sqf:fix>
         </sqf:group>
      </sch:rule>
   </sch:pattern>
</sch:schema>