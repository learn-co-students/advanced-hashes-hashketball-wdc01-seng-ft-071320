# Write your code below game_hash
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

# Write code here

def num_points_scored(player_name)
  game_hash.each do |team_location, team_property|
    team_property[:players].each do |player|
      if player[:player_name] == player_name
        return player[:points]
      end
    end
  end
end


def shoe_size(player_name)
  game_hash.each do |team_location, team_property|
    team_property[:players].each do |player|
      if player[:player_name] == player_name
        return player[:shoe]
      end
    end
  end
end


def team_colors(team_name)
  game_hash.each do |team_location, team_property|
    if team_property[:team_name] == team_name
      return team_property[:colors]
    end
  end
end


def team_names
  team_names = []
  game_hash.each do |team_location, team_property|
    team_names << team_property[:team_name]
  end
  team_names
end


def player_numbers(team_name)
  team_numbers = []
  game_hash.each do |team_location, team_property|
    team_property[:players].each do |player|
      if team_property[:team_name] == team_name
        team_numbers.push(player[:number])
      end
    end
  end
  team_numbers
end


def player_stats(player_name)
  game_hash.each do |team_location, team_property|
    team_property[:players].each_with_index do |player, player_index|
      if player[:player_name] == player_name
        return team_property[:players][player_index]
      end
    end
  end
end


def big_shoe_rebounds
  largest_shoe_size = nil
  number_rebound = nil
  game_hash.each do |team_location, team_property|
    team_property[:players].each do |player|
      if largest_shoe_size == nil || player[:shoe] > largest_shoe_size
        largest_shoe_size = player[:shoe]
        number_rebound = player[:rebounds]
      end
    end
  end
  number_rebound
end


def most_points_scored
  most_points = nil
  most_points_player = nil
  game_hash.each do |team_location, team_property|
    team_property[:players].each do |player|
      if most_points == nil || player[:points] > most_points
        most_points = player[:points]
        most_points_player = player[:player_name]
      end
    end
  end
  most_points_player
end


def winning_team
  home_team_name = nil
  home_team_score = 0
  away_team_name = nil
  away_team_score = 0
  game_hash.each do |team_location, team_property|
    home_team_name = team_property[:team_name] if team_location == :home
    away_team_name = team_property[:team_name] if team_location == :away
      team_property[:players].each do |player|
        if team_location == :home
          home_team_score += player[:points]
        else
          away_team_score += player[:points]
        end
      end
  end
  home_team_score > away_team_score ? home_team_name : away_team_name
end


def player_with_longest_name
  longest_name = nil
  longest_name_length = nil
  game_hash.each do |team_location, team_property|
    team_property[:players].each do |player|
      if longest_name == nil || player[:player_name].length > longest_name_length
        longest_name_length = player[:player_name].length
        longest_name = player[:player_name]
      end
    end
  end
  longest_name
end

def long_name_steals_a_ton?
  longest_name = nil
  longest_name_length = nil
  longest_name_steal = nil
  most_steal = nil
  game_hash.each do |team_location, team_property|
    team_property[:players].each_with_index do |player, index|
      if longest_name == nil || player[:player_name].length > longest_name_length
        longest_name_length = player[:player_name].length
        longest_name = player[:player_name]
        longest_name_steal = player[:steals]
      end
      if most_steal == nil || player[:steals] > most_steal
        most_steal = player[:steals]
      end
    end
  end
  longest_name_steal >= most_steal ? true : false
end





