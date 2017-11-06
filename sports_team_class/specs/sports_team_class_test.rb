require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class.rb')

class TestSportsTeamClass < Minitest::Test

  def test_team_name
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm")
    team.team_name
    assert_equal("Dragon", team.team_name)
  end

  def test_players_names
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm")
    team.players_names
    assert_equal(["Steve", "Bob", "John"], team.players_names)
  end

  def test_coach_name
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm")
    team.coach_name
    assert_equal("Malcolm", team.coach_name)
  end
end