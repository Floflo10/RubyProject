# @Author: Ismael Hadj
# @Date:   2018-05-21T10:46:10+02:00
# @Email:  Ismael.hadj13@yahoo.com
# @Last modified by:   Ismael Hadj
# @Last modified time: 2018-05-21T16:25:30+02:00



class TravelsController < ApplicationController
  def index
    @travels = Travel.all
  end

  def new
    @travel = Travel.new
  end

  def show
    @travel = Travel.find(params[:id])
  end

  def create
    @travel = Travel.new(travel_params)
    if @travel.valid?
      @travel.save!
      redirect_to travel_path(@travel)
    else
      # réaffiche le template new pour avoir formulaire + erreurs
      render :new
    end
  end

  private

  def travel_params
    params.require(:travel).permit(:title, :destination, :duration, :narrative, :photo)
  end
  def load_image(name)
    filepath = Rails.root.join("db", "imgs", name)
    File.open(filepath)

  end
end
