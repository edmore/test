class PeopleController < ApplicationController
  def index
    @people = Person.all
    render json: @people, include: [:goals], methods: :person_score, status: :ok
  end

  def create
    @person = Person.create!(people_params)
    render json: @person ,status: :created
  end

  def show
    @person = Person.find(params[:id])
    render json: @person, include: [:goals], methods: :person_score, status: :ok
  end

  private
  def people_params
    params.permit(:first_name, :last_name)
  end
end
