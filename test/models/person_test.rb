require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  setup do
    @no_first_name = people(:no_first_name)
    @no_last_name = people(:no_last_name)
  end

  test 'first_name is required' do
    refute @no_first_name.valid?
  end

  test 'last_name is required' do
    refute @no_last_name.valid?
  end
end
