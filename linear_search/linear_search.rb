require_relative '../lib/qtool'

class LinearSearch
  include Qtool::DataPreview

  def initialize(data)
    @data = data
    @cache_index = nil
    @match_amount = nil
  end

  def find_first(value)
    @data.each_with_index do |element,index|
      set_cache_index(index)
      return format_first([index,element]) if value == element
    end
  end

  def find_all(value)
    all = []
    @data[get_cache_index..-1].each_with_index do |element,index|
      all << [index+get_cache_index,element] if value == element
    end
    set_match_amount(all.length)
    format_all(all)
  end

  def get_match_amount
    @match_amount
  end

  def get_cache_index
    @cache_index
  end

  private

  def set_match_amount(amount)
    @match_amount = amount + 1
  end

  def set_cache_index(index)
    @cache_index = index+1
  end


  def format_first(value)
    puts "First -> Index: #{value[0]} - Value: #{value[1]}"
  end

  def format_all(all)
    all.each do |value|
      puts "Match -> Index: #{value[0]} - Value #{value[1]}"
    end
  end

end

data = Qtool::DataCreator.create(20,10)

value = data.sample
linear_search = LinearSearch.new(data)
linear_search.preview(data)
linear_search.find_first(value)
linear_search.find_all(value)
puts "Value: #{value} Matchs: #{linear_search.get_match_amount}"
