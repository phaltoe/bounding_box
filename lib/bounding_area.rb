require_relative 'bounding_box'
class BoundingArea
  def initialize(*boxes)
    @boxes = boxes.flatten
  end

  def boxes_contain_point?(x,y)
    boxes_contain_point = false

    @boxes.each do |box|
      if box.contains_point?(x, y)
        boxes_contain_point = true
      end
    end
    boxes_contain_point
  end

end
