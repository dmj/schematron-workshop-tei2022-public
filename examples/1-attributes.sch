<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
  <pattern>
    <rule context="tei:*[@to]">
      <report test="@notAfter" role="nonfatal">
        The @to and @notAfter attributes cannot be used together.
      </report>
    </rule>
  </pattern>
</schema>
