require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'valid' do
    person = people(:valid)
    assert person.valid?
  end

  test 'first_name is required' do
    refute Person.new(last_name: "Moyo").valid?
  end

  test 'last_name is required' do
    refute Person.new(first_name: "Edmore").valid?
  end

  test '#goals' do
    person = people(:valid)
    assert_equal 2, person.goals.size
  end
end
