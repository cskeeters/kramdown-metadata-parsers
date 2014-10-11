require 'delegate'
require 'yaml'

require 'kramdown'

module KramdownMetadataParsers
  class MetadataElement < DelegateClass(::Kramdown::Element)
    attr_accessor :metadata
  end

  module MetadataParser
    def initialize(source, options)
      if source =~ /\A---/
        preamble = source[/\A---.*?^---/m]
        source   = source[preamble.size..-1]
        metadata = YAML.load(preamble)
      end
      super(source, options)
      @root = MetadataElement.new(@root)
      @root.metadata = metadata || {}
    end
  end
end
