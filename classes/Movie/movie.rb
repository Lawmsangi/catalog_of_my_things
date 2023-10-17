require_relative '../item'

class Movie < Item
  attr_accessor :silet

  def initialize(publish_date, _silet)
    super(publish_date)
    @silet = true
  end

  def can_be_archived?
    super == true && @silet == true
  end
end
