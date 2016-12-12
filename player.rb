require_relative './mob.rb'
class Player < Mob
  def initialize(x, y, left_bind, right_bind, jump_bind)
    super(x, y, 42, 39, [Gosu::Image.new('./res/bunny_right.png'), Gosu::Image.new('./res/bunny_left.png')])
    @left_bind = left_bind
    @right_bind = right_bind
    @jump_bind = jump_bind

  end

  def update
    @accelX = 0
    if Gosu::button_down? @left_bind
      move_left
      change_tex('left')
    end
    if Gosu::button_down? @right_bind
      move_right
      change_tex('right')
    end
    if Gosu::button_down? @jump_bind
      jump
    end

    if Gosu::button_down? Gosu::KbR
      @x = $window_width/2
      @y = 20
    end


    super

  end

end