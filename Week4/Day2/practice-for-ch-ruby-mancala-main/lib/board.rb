
require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    @cups.each.with_index do |cup, i|
      if i !=  6 && i != 13
        @cups[i] = [:stone, :stone, :stone, :stone]
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12 || start_pos == 6 
    raise 'Invalid starting cup'
    end
    if @cups[start_pos].empty?
      raise 'Starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? {|cup| cup.empty?} || @cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    if @cups[0..5].all? {|cup| cup.empty?} && @cups[7..12].all? {|cup| cup.empty?}
      if @cups[6].count < @cups[13].count
        return @player1.name
      elsif @cups[6].count > @cups[13].count
        return @player2.name
      else
        return :draw
      end
    end
  end
end