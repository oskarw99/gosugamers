require_relative './entity.rb'
class Player < Entity
  def initialize(x, y)
    super(x, y, Gosu::Image.new('./res/bunny_left.png'), Gosu::Image.new('./res/bunny_right.png'))
    @prev_dir_right = true
    @dir_right = true
    @width = 42
    @height = 39
  end

  def update
    @go_left = true if Gosu::button_down? Gosu::KbLeft
    @go_right = true if Gosu::button_down? Gosu::KbRight
    @jump = true if (Gosu::button_down? Gosu::KbSpace or Gosu::button_down? Gosu::KbUp)

    super
  end
  def draw
    super
  end
end