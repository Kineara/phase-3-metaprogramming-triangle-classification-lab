class Triangle
  attr_reader :sides

  def initialize(side_one, side_two, side_three)
    # @side_one = side_one
    # @side_two = side_two
    # @side_three = side_three
    @sides = [side_one, side_two, side_three]
  end

  def kind 
    if self.sides.min > 0 && self.sides[0] + self.sides[1] > self.sides[2] && self.sides[0] + self.sides[2] > self.sides[1] && self.sides[1] + self.sides[2] > self.sides[0]
      case self.sides.uniq.length
      when 1
        :equilateral
      when 2
        :isosceles
      when 3
        :scalene
      end
    else
        raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
