# Kramdown Metadata Parsers

Kramdown extension for parsing Markdown with a YAML preamble, for example

``` md
---
title: Now With Fresh Metadata
date: 2014-10-11
---

## Good stuff

*right*?
```

Adds four new parsers, analogous with the ones included with Kramdown: `MetadataKramdown`, `MetadataMarkdown`, `MetadataGFM`, `MetadataHTML`. Use as you would use built-in formats, just make sure this gem is in your load path (i.e. add it to your Gemfile)

``` ruby
doc = Kramdown::Document.new(markdown, input: 'MetadataKramdown')
doc.root.metadata # => {:title => 'Now With Fresh Metadata', :date => '2014-10-11'}
doc.to_html
```
