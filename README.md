# A short Introduction to Schematron

This repository contains slides, software, and exercises for the half-day workshop "A short Introduction to Schematron"
held at the TEI Conference and Members' Meeting 2022 in Newcastle, UK.

## Abstract

Schematron is a rule based validation language for structured documents. It was designed by Rick Jelliffe in 1999 and standardized as ISO/IEC 19757-3 in 2006.  It lets you evaluate assertion test for selected parts of a document.  Schematron uses XPath both as the language to select the portion of a document and as the language of the assertion tests. This use of XPath gives Schematron the flexibility to validate arbitrary relationships and dependencies of information items in a document.

What also sets Schematron apart from other languages is that it encourages the use of natural language descriptions targeted to human readers. This way validation can be more than just a binary distinction (document valid/invalid) but also support authors of in-progress documents with quick feedback on erroneous or unwanted document structure and content.

The flexibility and (relative) simplicity of Schematron makes it an invaluable tool for XML-based text encoding projects. The range of supported tasks reaches from "hard" validation to enforce constraints on documents to "soft" validation to report potential problems such as Unicode characters from Unicode Private Use Areas to interactive error correction with Schematron extensions like Schematron QuickFix.

This half-day workshop will introduce the participants to the principal idea of Schematron and practice its application to XML-based text encoding projects. Together we will explore patterns, rules, and assertions as the basic Schematron concepts and touch phases, variables, and abstract patterns as more advanced features of Schematron validation.

From the participants the workshop requires a general understanding of XML document editing and knowledge of XPath. The material requirements are a projector and laptops to follow through with the examples given in the workshop. Any operating system with a recent Java Runtime is sufficient

Participants are recommended to bring their own device.

## Content

### SchXslt command line application

```bin/schxslt-clit.jar``` is the Java-based commandline application that implements Schematron validation with [SchXslt](https://github.com/schxslt/schxslt), a modern XSLT-based Schematron processor.

```
SchXslt CLI v1.9.1
usage: name.dmaus.schxslt.cli.Application [-d <arg>] [-o <arg>] [-p <arg>] [-r] -s <arg> [-v]
 -d,--document <arg>     Path to document
 -o,--output <arg>       Output file (SVRL report)
 -p,--phase <arg>        Validation phase
 -r,--repl               Run as REPL
 -s,--schematron <arg>   Path to schema
 -v,--verbose            Verbose output
```

### Slides

The slides of the workshop are prepared with [S5: A Simple Standards-Based Slide Show
System](https://meyerweb.com/eric/tools/s5/).

### Excercises

## Resources & Bibliography

## License information

The slides are copyright (c) 2022 by David Maus and released under the terms of the [Creative Commons Attribution 4.0
International](https://creativecommons.org/licenses/by/4.0/) license.

SchXslt CLI is copyright (c) 2019–2022 by David Maus and released under the terms of the [MIT
License](https://opensource.org/licenses/MIT). The source code is available at
[github.com/schxslt/schxslt](https://github.com/schxslt/schxslt).

The files of the [Simple Standards-Based Slide Show](https://meyerweb.com/eric/tools/s5/) are in the Public Domain.

The logo of the [Schematroll](https://github.com/schematron/schematroll) was drawn by Cody Chang and is free for use on
Schematron-related products.
