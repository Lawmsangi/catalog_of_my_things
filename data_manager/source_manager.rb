require 'json'
require_relative '../classes/Movie/source'

class SourceManager
  def load_source
    return [] unless File.exist?("json/source.json")

    data = JSON.parse(File.read("json/source.json"))
    sources = []
    data['Sources'].map { |source_data| sources << Source.new(source_data['name'], source_data['id']) }
    labels
  end
end
