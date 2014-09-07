require 'pry'
require_relative 'bounding_box'

class BoundingBox
  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
  end

  def width
    @width
  end

  def height
    @height
  end

  def left
    @left
  end

  def right
    @left + @width
  end

  def top
    @bottom + @height
  end

  def bottom
    @bottom
  end

  def contains_point?(x, y)
    x >= left && x <= right && y >= bottom && y <= top
  end
end


class BoundingArea
  def initialize(rects = [])
    @rects = rects
  end

  def rects
    @rects
  end

  def contains_point?(x, y)
    if rects == []
      return false
    else
      rects.each do |rect|
        if x >= rect.left && x <= rect.right && y >= rect.bottom && y <= rect.top
        return true
        end
      rect
      end
    end

  end




end

# bottom_rect = BoundingBox.new(0.0, 0.0, 2.0, 1.0)
# top_rect = BoundingBox.new(2.0, 1.0, 3.0, 4.0)

# area = BoundingArea.new([bottom_rect, top_rect])

# area.contains_point?(0.5,0.5)
#binding.pry
