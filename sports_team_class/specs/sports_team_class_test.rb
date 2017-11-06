require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team_class.rb')

class TestSportsTeamClass < Minitest::Test

  def test_team_name
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
    team.team_name
    assert_equal("Dragon", team.team_name)
  end

  def test_players_names
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
    team.players_names
    assert_equal(["Steve", "Bob", "John"], team.players_names)
  end

  def test_coach_name
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
    team.coach_name
    assert_equal("Malcolm", team.coach_name)
  end

  def test_change_coach_name
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
    team.coach_name = "Sam"
    assert_equal("Sam", team.coach_name)
  end

  def test_add_player
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
    team.add_player("Rory")
    assert_equal(["Steve", "Bob", "John", "Rory"], team.players_names)
  end

  def test_check_players__false
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
    team.check_players("Dave")
    assert_equal(false, team.check_players("Dave"))
  end

  def test_check_players__true
    team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
    team.check_players("John")
    assert_equal(true, team.check_players("John"))
  end

  def test_award_points__win
      team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
      team.award_points('win')
      assert_equal(10, team.points)
  end

  def test_award_points__lose
      team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
      team.award_points('lose')
      assert_equal(0, team.points)
  end

  def test_award_points__error
      team = Team.new("Dragon", ["Steve", "Bob", "John"], "Malcolm", 0)
      team.award_points('ssjdsjdfs')
      assert_equal(0, team.points)
  end

end
