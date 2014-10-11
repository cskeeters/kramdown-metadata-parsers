require 'kramdown-metadata-parsers'
require 'kramdown/parser/markdown'

module Kramdown
  module Parser
    class MetadataMarkdown < Markdown
      include KramdownMetadataParsers::MetadataParser
    end
  end
end
