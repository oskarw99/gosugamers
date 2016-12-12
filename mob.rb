require_relative './entity.rb'
class Mob < Entity
  def initialize(x, y, width, height, tex)
    super(x, y, width, height, tex, true)
    @has_jumped = false
    @dead = false

    $colliding << self

  end
  def kill
    $colliding.delete(self)
    @dead = true
  end
  def jump
    @velY = -13 if @on_ground
  end

  def move_left
    @accelX = -1
  end
  def move_right
    @accelX = 1
  end

  def draw
    super unless @dead
  end
end