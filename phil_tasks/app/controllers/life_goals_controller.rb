class LifeGoalsController < ApplicationController
  def index
    @life_goals = LifeGoal.all
  end

  def new

  end

  def create
    life_goal = LifeGoal.new({
      title: params[:life_goal][:title],
      description: params[:life_goal][:description]
      })
    life_goal.save
    redirect_to '/life_goals'
  end

  def show
    @life_goal = LifeGoal.find(params[:id])
  end

  def edit
    @life_goal = LifeGoal.find(params[:id])
  end

  def update
    life_goal = LifeGoal.find(params[:id])
    life_goal.update({
      title: params[:life_goal][:title],
      description: params[:life_goal][:description]
      })
    life_goal.save
    redirect_to "/life_goals/#{life_goal.id}"
  end

  def destroy
    LifeGoal.destroy(params[:id])
    redirect_to '/life_goals'
  end
end
