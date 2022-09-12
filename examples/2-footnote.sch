<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
  <pattern>
    <rule context="tei:note[@type='footnote']">
      <assert test="ends-with(., '.') or ends-with(., '?') or ends-with(., '!')">
        A footnote must end with a punctuation mark.
      </assert>
    </rule>
  </pattern>
</schema>
