class GamesController < ApplicationController
  def calc_computer_move
    computer_move = ["rock", "paper", "scissors"].sample
  end

  def calc_game_result(player_move, computer_move)
    if (player_move == "rock" && computer_move == "scissors") || (player_move == "paper" && computer_move == "rock") || (player_move == "scissors" && computer_move == "paper")
      result = "You won!"
    elsif player_move == computer_move
      result = "You tied!"
    else
      result = "You lost!"
    end
  end

  def start_game
    render("games/start_game.html.erb")
  end
  def play_rock
    @player_move = "rock"
    @computer_move = calc_computer_move
    @result = calc_game_result(@player_move, @computer_move)
    render("games/play_rock.html.erb")
  end
  def play_paper
    @player_move = "paper"
    @computer_move = calc_computer_move
    @result = calc_game_result(@player_move, @computer_move)
    render("games/play_paper.html.erb")
  end
  def play_scissors
    @player_move = "scissors"
    @computer_move = calc_computer_move
    @result = calc_game_result(@player_move, @computer_move)
    render("games/play_scissors.html.erb")
  end
end
