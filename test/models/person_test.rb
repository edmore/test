require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  setup do
    @person = people(:valid)
    @no_first_name = people(:no_first_name)
    @no_last_name = people(:no_last_name)
  end

  test 'valid' do
    assert @person.valid?
  end

  test 'first_name is required' do
    refute @no_first_name.valid?
  end

  test 'last_name is required' do
    refute @no_last_name.valid?
  end

  test '#goals' do
    assert_equal 2, @person.goals.size
  end
end
