<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <title>Introduction to Schematron – Exercise 1 – Solution</title>

  <ns prefix="fn" uri="http://example.com/ns"/>
  <ns prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>

  <xsl:function name="fn:resolve-register-uri" as="xs:string?">
    <xsl:param name="registerUri" as="xs:string"/>
    <xsl:param name="registerPrefixDef" as="element(tei:prefixDef)?"/>
    <xsl:if test="exists($registerPrefixDef)">
      <xsl:value-of select="replace($registerUri, $registerPrefixDef/@matchPattern, $registerPrefixDef/@replacementPattern)"/>
    </xsl:if>
  </xsl:function>

  <xsl:key name="prefixDef" match="tei:prefixDef" use="@ident"/>

  <pattern id="header">
    <rule context="tei:teiHeader">
      <assert test="count(key('prefixDef', 'register')) eq 1">
        The letter <value-of select="ancestor::tei:TEI/@n"/> does not have a definition for the private 'register' URI prefix.
      </assert>
    </rule>
  </pattern>
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
  <pattern id="referencing-string-register-link">
    <rule context="tei:rs[starts-with(@ref, 'register:')]">
      <let name="registerUri" value="substring-after(@ref, 'register:')"/>
      <let name="registerUriResolved" value="fn:resolve-register-uri($registerUri, key('prefixDef', 'register'))"/>
      <assert test="if ($registerUriResolved ne '') then exists(document($registerUriResolved, .)) else false()" id="assert-rs-link-target">
        A reference to the register must point to an existing entry. The reference '<value-of select="@ref"/>' is dangling.
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
