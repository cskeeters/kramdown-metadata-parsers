require 'kramdown-metadata-parsers'
require 'kramdown/parser/gfm'

module Kramdown
  module Parser
    class MetadataGFM < GFM
      include KramdownMetadataParsers::MetadataParser
    end
  end
end
