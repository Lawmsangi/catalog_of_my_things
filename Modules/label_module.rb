require_relative '../classes/Book/label'

module LabelModule
  def list_labels
    if @labels.empty?
      puts 'No labels found'
    else
      @labels.each_with_index do |label, index|
        puts "#{index + 1}: ID:#{label.id}, Title: #{label.title}, Color: #{label.color}"
      end
    end
  end
end
