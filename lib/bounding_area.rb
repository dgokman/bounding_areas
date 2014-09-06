require 'pry'
require_relative 'bounding_box'
class BoundingArea
  def initialize(area)
    bottom_rect = nil
    top_rect = nil
    @bounding_area = [bottom_rect, top_rect]
  end

  def bounding_area
    @bounding_area
  end

  def contains_point?(x, y)
    if bounding_area == [nil, nil]
      return false
    end
  end

end

# area = []
# a = BoundingArea.new(area)
# a.contains_point?(0,0)

