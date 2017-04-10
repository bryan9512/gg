class BoardController < ApplicationController
  def create
     unless params[:username].blank?||params[:contents].blank?
        new_letter=Letter.new
        new_letter.username=params[:username]
        new_letter.contents=params[:contents]
        new_letter.save
      end
      redirect_to action:'list'
  end
  
  def list
    @list= Letter.all
  end
end
