<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <title>Hello World!</title>
  <pattern>
    <rule context="message">
      <report test="true()">
        <value-of select="."/>
      </report>
    </rule>
  </pattern>
</schema>
