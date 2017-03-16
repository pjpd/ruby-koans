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
include Math

def triangle(a, b, c)
  #Error handling logic
  [a,b,c].each do |l|
    if l <= 0 or a+b <= c or b+c <= a or c+a<=b
      raise TriangleError
    end
  end


  #Triangle Logic
  num = [a,b,c].uniq.size
  if num == 3
    :scalene
  elsif num == 2
    :isosceles
  elsif num == 1
    :equilateral
  else
    :error
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
