require 'json'
require_relative '../classes/Book/label'

class LabelManager
  def load_labels
    return [] unless File.exist?('json/label.json')

    data = JSON.parse(File.read('json/label.json'))
    labels = []
    data['Labels'].map { |label_data| labels << Label.new(label_data['title'], label_data['color']) }
    labels
  end
end
