require 'test_helper'

class GoalTest < ActiveSupport::TestCase

  setup do
    @goal = goals(:one)
    @invalid_goal = goals(:invalid)
    @invalid_score1 = goals(:invalid_score1)
    @invalid_score2 = goals(:invalid_score2)
  end

  test 'valid goal' do
    assert @goal.valid?
  end

  test 'title is required' do
    refute @invalid_goal.valid?
  end

  test 'score is between 1 and 10' do
    refute @invalid_score1.valid?
    refute @invalid_score2.valid?
  end
end
