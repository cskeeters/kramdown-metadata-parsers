require 'kramdown-metadata-parsers'
require 'kramdown/parser/kramdown'

module Kramdown
  module Parser
    class MetadataKramdown < Kramdown
      include KramdownMetadataParsers::MetadataParser
    end
  end
end
