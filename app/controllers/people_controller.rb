class PeopleController < ApplicationController
  def index
    @people = Person.all
    render json: @people, status: :ok
  end
end
