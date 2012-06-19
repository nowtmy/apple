class WaysController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  before_filter :nope, :except => [:index]

  def plan1

  end

  def plan2

  end

  def plan3

  end

  def index

  end

  def list

  end

  private

  def nope
    if current_user.plan_type == self.action_name.capitalize
    else
      flash[:notice] = "you don't have access in this plan, please change your plan first"
      render :index
    end
  end
end
