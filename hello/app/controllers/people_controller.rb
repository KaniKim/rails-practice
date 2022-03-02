class PeopleController < ApplicationController
  def index
    @msg = "Person data."
    @data = Person.all
  end

  def show
    @msg = "Indexed data."
    @data = Person.find(params[:id])
  end

  def add
    @msg = "add new data."
    @person = Person.new
  end

  def create
    if request.post? then
      Person.create(person_params)
    end
    redirect_to "/people"
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end

  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to "/people"
  end

  private
  def person_params
    params.require(:person).permi(:name, :age, :mail)
  end
end
