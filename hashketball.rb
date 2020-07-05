# Write your code below game_hash
require 'pry'
require './hashketball.rb'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end



def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |element|
          if element[:player_name] == player_name
            return element[:points]
          end
        end
      end
    end
  end
end


#   n = 0
#   game_hash.each do |location, team_data|
# if team_data[:players][n][:player_name] == player_name
#   binding.pry
#   return team_data[:players][0][:points]
#   n += 1
#
#   if value == player_name
#     return
#
#   game_hash.each do |location, team_data|
#     team_data.each do |attribute, data|

# def team_colors(team_name)
#
#   return arry of the teams colors
# end
#
#
# def player_numbers(team_name)
#   get_team_helper(team)[:players].map do |player| # or |key, value| if player is array
#     player[:number] #or value[:number] =>this will return array of numbers
#   end
# end
#   #return arry of jersey numbers of that team
#
#
#
# def shoe_size(player_name)
#
#   return shoe_size of that player
# end
#
#
# def team_colors(team_name)
#
#   return arry of the teams colors
# end
#
#
# def team_names
#
#   return array of team names
# end
#
#
# def player_numbers(team_name)
#   get_team_helper(team)[:players].map do |player|
#     player[:number]
#   end
# end
#   #return arry of jersey numbers of that team
#
# def play_stats(player_name)
#
#   return hash of that player stats
# end
#
#
# def big_shoe_rebounds
#
#   return the number of rebounds associated with the player that has largest shoe size.
# end

# First, find the player with the largest shoe size
# Then, return that player's number of rebounds
# Remember to think about return values here.



# def player_helper
#   game_hash[:home][:players].merge(game_hash[:away][:players])
# end
#
# def get_team_helper(team)
#   case team
#   when game_hash[:home][:team_name]
#     game_hash[:home]
#
#   when game_hash[:away][:team_name]
#     game_hash[:away]
#   end
# end
#
# def num_points_scored(player_name)
#   binding.pry
#   player_helper[:players][:points]
#   binding.pry
# end
