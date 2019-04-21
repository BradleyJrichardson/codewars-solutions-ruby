# Create a Warrior class
# It must support level, rank, experience, achievements, training(event), and battle(enemy_level) methods

class Warrior
  attr_accessor :level, :rank, :experience, :achievements

  def initialize
    @level = 1
    @rank = "Pushover"
    @experience = 100
    @achievements = []
  end

  def experience
    @experience
  end

  def achievements
    @achievements
  end

  def level
    if @experience > 10_000
      @level = 100
    else
      @level = @experience / 100
    end
  end

  def rank
    case @level
    when 1..9 then @rank = "Pushover"
    when 10..19 then @rank = "Novice"
    when 20..29 then @rank = "Fighter"
    when 30..39 then @rank = "Warrior"
    when 40..49 then @rank = "Veteran"
    when 50..59 then @rank = "Sage"
    when 60..69 then @rank = "Elite"
    when 70..79 then @rank = "Conqueror"
    when 80..89 then @rank = "Champion"
    when 90..99 then @rank = "Master"
    when 100 then @rank = "Greatest"
    end
  end

  def battle(enemy_level)
    if check_enemy_level(enemy_level)
      if enemy_level == @level
        @experience += 10
        "A good fight"
      elsif enemy_level == @level - 1
        @experience += 5
        "A good fight"
      elsif enemy_level < @level - 2
        @experience
        "A good fight"
      else
        fight_higher_level_enemy(enemy_level)
      end
    else
      "Invalid level"
    end
  end

  def training(array)
    if @level >= array[2]
      @achievements << array[0]
      @experience += array[1]
      xp = @experience
      check_if_exp_over_10000(xp)
      array[0]
    else
      "Not strong enough"
    end
  end

  def check_if_exp_over_10000(xp)
    if @experience > 10_000
      @experience = 10_000
      @achievements += ["Do ten push-ups"]
    end
  end

  def check_enemy_level(enemy_level)
    if enemy_level.between?(1, 100)
      true
    else
      false
    end
  end

  def fight_higher_level_enemy(enemy_level)
    if enemy_level > @level + 5
      "You've been defeated"
    elsif enemy_level == @level + 4
      @experience += 20 * 4 * 4
      "An intense fight"
    elsif enemy_level == @level + 3
      @experience += 20 * 3 * 3
      "An intense fight"
    else
      enemy_level == @level + 2
      @experience += 20 * 2 * 2
      "An intense fight"
    end
  end
end

bruce_lee = Warrior.new
bruce_lee.training(["Defeated Chuck Norris", 9000, 1])
bruce_lee.training(["Defeated Chuck Norris", 9000, 1])
bruce_lee.experience
p bruce_lee.achievements
bruce_lee.level
bruce_lee.rank
