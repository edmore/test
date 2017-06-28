class GoalsController < ApplicationController

  def create
    person = Person.find(params[:person_id])
    person.goals.create!(goal_params)
    render json: person, status: :created
  end

  def index
    person = Person.find(params[:person_id])
    render json: person.goals, status: :ok
  end

  private
  def goal_params
    params.permit(:title, :score)
  end
end
