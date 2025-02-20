class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (@side1 == @side2 && @side2 == @side3 && @side1 == 0) || (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side2 == @side3 || @side1 == @side3 || @side1 == @side2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end

