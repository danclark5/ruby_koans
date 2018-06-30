# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  unique_sides = []
  sides = [a, b, c]

  if a + b <= c or a + c <= b or b + c <= a
    raise TriangleError
  end

  for side in sides
    if side <= 0
      raise TriangleError
    end
    unique_sides << side unless unique_sides.include? side 
  end

  if unique_sides.length == 1
    return :equilateral
  elsif unique_sides.length == 2 
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
