class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end

  def play
    while !@game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    if !@game_over
      self.round_success_message
      @sequence_length += 1
      self.show_sequence
      self.require_sequence
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
  end

  def add_random_color
    seq << COLORS.sample(1)[0]
  end

  def round_success_message
  end

  def game_over_message
    puts 'you done goofed'
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = Array.new
  end
end