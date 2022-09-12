<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <title>Introduction to Schematron – Exercise 1 – Solution</title>
  <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
  <pattern id="referencing-string">
    <rule context="tei:rs">
      <assert test="@type" id="assert-type-required">
        Every rs element must have a @type attribute.
      </assert>
      <assert test="@type = ('organization', 'person', 'place', 'work')" id="assert-type-value">
        The value of a @type attribute on a rs element must be one of 'organization', 'person', 'place', or 'work'. The value '<value-of select="@type"/>' is invalid.
      </assert>
      <assert test="@ref" id="assert-ref-required">
        Every rs element must have a @ref attribute.
      </assert>
      <assert test="starts-with(@ref, 'register:')" id="assert-ref-register">
        The value of a @ref attribute on a rs element must start with the 'register:' private URI prefix.
      </assert>
    </rule>
  </pattern>
  <pattern id="correspondence-description">
    <rule context="tei:correspDesc">
      <assert test="exists(tei:correspAction/tei:date)" id="assert-correspaction-date">
        A correspondence description must have at least one dated corresponding action.
      </assert>
    </rule>
  </pattern>
</schema>
