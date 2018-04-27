# This object contains the general size and shape of a grid. The object's methods
# can then be used to print that grid to the terminal.
class Ascii_grid 

    # Grid Width
    attr_accessor :x_size
    # Grid Height 
    attr_accessor :y_size 
    # Helps decide origin, make it exactly 1/2 of x_size to keep (0, 0) in the center
    attr_accessor :x_offset
    # Helps decide origin, make it exactly 1/2 of y_size to keep (0, 0) in the center
    attr_accessor :y_offset
    # This is what will be printed as a point, should only be one character
    attr_accessor :point
    # This is what will be printed as blank space in the grid, should only be one character
    attr_accessor :blank_space
    # Bolean value, if true the clear command will be run when the make_grid method is called
    attr_accessor :clear

    def initialize(x_size, y_size, x_offset, y_offset)
        @x_size = x_size.to_i
        @y_size = x_size.to_i
        @x_offset = x_offset.to_i
        @y_offset = y_offset.to_i
        @point = "@"
        @blank_space = "+"
        @clear = false
    end

    # This method prints the grid to the terminal. It takes an array of x and y values that will be printed as points.
    #
    # Example:
    #   ascii_grid.make_grid(1, 2, 3, -4)
    #
    # This will print the points (1, 2) and (3, -4)
    #
    # It also returns a string with the grid that was printed.
    def make_grid(*points)
        self.convert_values()
        printed = ""
        if (@clear)
            system ('clear')
        end
        x_points = Array.new
        y_points = Array.new
        # Divide points
        (0..points.length - 1).each do |position|
            if (position % 2 == 0)
                x_points.push(points[position].to_i)
            else
                y_points.push(points[position].to_i)
            end
        end
        # Start loop
        (0..@y_size.to_i).each do |current_y|
            (0..@x_size.to_i).each do |current_x|
                # Setup
                print_fill = true
                relative_x = current_x - @x_offset
                relative_y = @y_offset - current_y
                point_amount = x_points.length - 1
                # Check point
                (0..point_amount.to_i).each do |position_point|
                    if (x_points[position_point] == relative_x)
                        if (y_points[position_point] == relative_y)
                            printed << @point.to_s
                            print_fill = false
                        end
                    end
                end
                # Fill
                if (print_fill)
                    if (@x_offset == current_x)
                        printed << "|"
                    elsif (@y_offset == current_y)
                        printed << "-"
                    else
                        printed << @blank_space.to_s
                    end
                end
                if (y_offset == current_y)
                    printed << "-"
                else
                    printed << " "
                end
            end
            printed << "\n"
        end
        print printed
        return printed
    end

    # This method should convert all of the object's attributes into the correct data type.
    # You shouldn't have to use this unless you are getting weird errors.
    def convert_values
        @x_size = @x_size.to_i
        @y_size = @y_size.to_i
        @x_offset = @x_offset.to_i
        @y_offset = @y_offset.to_i
        @point = @point.to_s
        @blank_space = @blank_space.to_s
    end

end