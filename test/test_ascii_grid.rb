require 'minitest/autorun'
require 'ascii_grid'

class Test_Ascii_grid < Minitest::Test
    def test_value
        grid = Ascii_grid.new(30, 10, 10, 5)
        grid_x_offset = grid.x_offset
        assert_equal 10, grid_x_offset 
    end

    def test_value_set
        grid = Ascii_grid.new(30, 10, 10, 5)
        grid.y_size = 15
        new_y_size = grid.y_size
        assert_equal 15, new_y_size
    end

    def test_make_grid
        grid = Ascii_grid.new(20, 20, 10, 10)
        grid_string = grid.make_grid(1, 2, 4, -3)
        grid2 = Ascii_grid.new(20, 20, 5, 10)
        grid2.x_offset = 10
        grid2_string = grid2.make_grid(1, 2, 4, -3)
        assert grid_string != nil
        assert_equal grid_string, grid2_string
    end
end