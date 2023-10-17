require_relative '../classes/Movie/source'

module SourceModule
  def list_sources
    if @sources.empty?
        puts "No sources found"
    else
        @sources.each_with_index do |source,index|
            puts "#{index+1}. ID:#{source.id}, Name: #{source.name}"
        end
    end
  end
end