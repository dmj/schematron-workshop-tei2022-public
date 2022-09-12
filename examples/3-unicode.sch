<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <pattern>
    <rule context="text()|@*">
      <report test="matches(., '\p{Co}')" role="info">
        This element or attribute contains characters from the Unicode Private Use Area.
      </report>
    </rule>
  </pattern>
</schema>
