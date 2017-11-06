class Team

  attr_reader :team_name, :players_names, :coach
  attr_writer :team_name, :players_names, :coach

  def initialize(input_team_name, input_players_names, input_coach)
    @team_name = input_team_name
    @players_names = input_players_names
    @coach_name = input_coach
  end

  def team_name
    return @team_name
  end

  def players_names
    return @players_names
  end

  def coach_name
    return @coach_name
  end

end
