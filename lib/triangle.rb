# class Triangle
#   # write code here
# end


class Triangle
  #attr_accessor :partner, :name

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

# class TriangleError < StandardError
# end

# beyonce = Person.new("Beyonce")
# beyonce.get_married("Jay-Z")
# puts beyonce.name
