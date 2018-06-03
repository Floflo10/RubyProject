# @Author: Ismael Hadj
# @Date:   2018-05-21T11:27:04+02:00
# @Email:  Ismael.hadj13@yahoo.com
# @Last modified by:   Ismael Hadj
# @Last modified time: 2018-05-21T12:41:39+02:00



class InsertRecitController < ApplicationController

  def create
    Travels.create destination: params[:destination]
    redirect_to "/insert"
  end
end
