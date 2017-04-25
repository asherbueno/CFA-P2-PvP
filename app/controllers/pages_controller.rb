class PagesController < ApplicationController

skip_before_action :authenticate_user!, :only => [:landing]

  def landing
  end

  def donate
  end

  def user_dashboard
  
  end
end
