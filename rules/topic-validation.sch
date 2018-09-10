<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
    <sch:pattern>
        <sch:rule context="*[contains(@class, 'topic/title')]">
            <sch:report test="*[contains(@class, 'hi-d/')]" role="fatal">
                [<sch:value-of select="//*[1]/@id"/>]: Do not use inline formatting in &lt;title>
            </sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>