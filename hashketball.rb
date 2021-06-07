# Write your code below game_hash
require "pry"

# Write code here

def home_team
  game_hash[:home]
  
end

def home_players
  home_team[:players]
end

def get_all_players
  home_players + game_hash[:away][:players]
end

def find_player(name)
 get_all_players.find { |player_hash| player_hash[:player_name] == name }
end 

def find_team(team_name)
  game_hash.values.find do |team|
    team[:team_name] == team_name
    #binding.pry
  end
end

def num_points_scored(name)
 #player = get_all_players.find { |player_hash| player_hash[:player_name] == name }
 #above is the syntax for searching for a player in the hash with a given name
 
 find_player(name)[:points]
 
# binding.pry
end
#binding.pry

def shoe_size(name)
 player = get_all_players.find { |player_hash| player_hash[:player_name] == name }
 #above is the syntax for searching for a player in the hash with a given name
 player[:shoe]
# binding.pry
end
def team_names
  #iterate over game hash
  #we wanto pull ut team_name from eah team hash
  values_arr = game_hash.values #the values additon will give us the hash
  names_arr = values_arr.map do |team_hash|
    team_hash[:team_name]
end
  binding.pry
end

def team_colors(team_name)
  #find team hash
team_hash = find_team(team_name)
#grabs colors from the team
team_hash[:colors]
end


def player_numbers(team_name)
  find_team(team_name)[:players].map {|each_player| player_hash[:number] }
  
  
  binding.pry
end


def player_stats(name)
  player_hash = find_player(name)
  player_hash.delete(:playername)
  player_hash
end

def big_shoe_rebounds
  
  player = get_all_players.max by {|player_hash| player_hash[:shoe]}
  
end 





