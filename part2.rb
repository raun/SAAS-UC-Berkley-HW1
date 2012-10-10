class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  return(m1+m2) =~ /rs|sp|pr|rr|ss|pp/i
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
	strategy=["s","p","r"]
	if strategy.include?(game[0][1].downcase) && strategy.include?(game[1][1].downcase)
		if rps_result(game[0][1],game[1][1])
			return game[0]
		else
			return game[1]
		end
	else
		raise NoSuchStrategyError
	end
end

def rps_tournament_winner(tournament)
   if tournament[0][1].class==String
   	return rps_game_winner(tournament)
   else
   	a1=rps_tournament_winner(tournament[0])
   	a2=rps_tournament_winner(tournament[1])
   	return rps_tournament_winner([a1,a2])
   end
end
