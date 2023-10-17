require_relative '../classes/Game/author'
require_relative '../classes/item'

describe Author do
  before :each do
    @author = Author.new('Acacia', 'Morningstar')
  end

  context 'test add item method' do
    it 'should return an array of item' do
      item = Item.new('2010/01/12', archived: false)
      @author.add_item(item)
      expect(@author.items).to eq([item])
    end
  end

  context '#test Author' do
    it 'should return correct first name of author' do
      expect(@author.first_name).to eq('Acacia')
    end

    it 'should return correct last name of author' do
      expect(@author.last_name).to eq('Morningstar')
    end
  end
end
