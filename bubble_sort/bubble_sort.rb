require_relative '../lib/qtool'

class BubbleSort
  include Qtool::DataPreview

  def initialize(data)
    @data = data
  end

  def sort
    size = @data.length

    for i in 0..size-1
      for j in 0..size-2
        if @data[j] > @data[j+1]
          @data[j], @data[j+1] = @data[j+1] , @data[j]
        end
      end
    end

    puts "::BubbleSort::"
    preview @data
  end

end

data = Qtool::DataCreator.create(10,100)
buble_sort = BubbleSort.new(data)
buble_sort.preview(data)
buble_sort.sort
