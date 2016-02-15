class BoundingBox
  attr_reader :x
  attr_reader :y
  attr_reader :width
  attr_reader :height
  attr_reader :left
  attr_reader :right
  attr_reader :bottom
  attr_reader :top
  
  def initialize(x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
    @left = x
    @right = x + width
    @bottom = y
    @top = y + height
  end

  def contains_point?(x_coordinate, y_coordinate)
    x_coordinate >= @left && x_coordinate <= @right && y_coordinate >= @bottom && y_coordinate <= @top
  end

end
