require 'pry'
require_relative 'bounding_box'

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
        else
          return false
        end
      end
    end
  end
end
