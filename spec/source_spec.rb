require_relative '../classes/Movie/source'
require_relative '../classes/item'

describe Source do
  before :each do
    item = Item.new('2007/03/01')
    @source = Source.new('Netflix', item)
  end

  context 'test add item method' do
    it 'should return an array of item' do
      item = Item.new('2007/03/01')
      @source.add_item(item)
      expect(@source.items).to eq([item])
    end
  end

  context '#test source' do
    it 'should return the correct name of the source' do
      expect(@source.name).to eq('Netflix')
    end
  end
end
