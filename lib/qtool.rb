module Qtool

  module DataCreator
    def self.create(amount, max_value)
      data = Array.new
      amount.times do
        data << Random.rand(max_value)
      end
      data
    end
  end

  module DataPreview
    def preview(data)
      preview = []
      data.each_with_index do |element, index|
        preview << [index, element]
      end
      format_preview(preview)
    end

    private

    def format_preview(value)
      value.each do |elements|
        puts "Index: #{elements[0]} - Value: #{elements[1]}"
      end
    end
  end
end
