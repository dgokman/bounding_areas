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
