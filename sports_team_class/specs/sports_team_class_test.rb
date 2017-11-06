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

  def test_change_coach_name
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm")
    team.coach_name = "Sam"
    assert_equal("Sam", team.coach_name)
  end

  def test_add_player
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm")
    team.add_player("Rory")
    assert_equal(["Steve", "Bob", "John", "Rory"], team.players_names)
  end

  def test_check_players__false
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm")
    team.check_players("Dave")
    assert_equal(false, team.check_players("Dave"))
  end

  def test_check_players__true
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm")
    team.check_players("John")
    assert_equal(true, team.check_players("John"))
  end
end
