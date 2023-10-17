require_relative '../classes/Movie/movie'

describe Movie do
  describe '#can_be_archived?' do
    context 'Return Boolean based on difference between release date and silet attribute' do
      it 'when the movie is old enough and not silet, it will return true' do
        movie = Movie.new('2001/02/21', false)
        expect(movie.can_be_archived?).to eq(true)
      end

      it 'when the movie is not old enough and silet, it will return false' do
        movie = Movie.new('2022/06/05', true)
        expect(movie.can_be_archived?).to eq(false)
      end
    end
  end

  describe 'Should validate user input' do
    context 'when user inputs release date' do
      it 'returns correct release date' do
        movie = Movie.new('1994/05/18', true)
        expected_date = Date.parse('1994/05/18')
        expect(movie.publish_date).to eq(expected_date)
      end

      it 'returns correct silet attribute' do
        movie = Movie.new('1994/05/18', false)
        expect(movie.silet).to eq(true)
      end
    end
  end
end
