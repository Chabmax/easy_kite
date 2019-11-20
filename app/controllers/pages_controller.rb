class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @rentals = Rental.where(user: current_user).order(date_start: :desc)
    @user = current_user
  end
end
