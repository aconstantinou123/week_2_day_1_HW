class Team

  attr_reader :team_name, :players_names, :coach_name
  attr_writer :team_name, :players_names, :coach_name

  def initialize(input_team_name, input_players_names, input_coach_name)
    @team_name = input_team_name
    @players_names = input_players_names
    @coach_name = input_coach_name
  end

  def add_player(name)
    @players_names.push(name)
  end

  def check_players(name)
    if @players_names.include?(name)
      return true
    else
      return false
    end
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players_names
  #   return @players_names
  # end
  #
  # def coach_name
  #   return @coach_name
  # end

end
