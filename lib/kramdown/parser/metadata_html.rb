require 'kramdown-metadata-parsers'
require 'kramdown/parser/html'

module Kramdown
  module Parser
    class MetadataHTML < HTML
      include KramdownMetadataParsers::MetadataParser
    end
  end
end
