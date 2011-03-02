class SayController < ApplicationController
  def hello
  @time = Time.now
  @name = nil
  end

  def goodbye
  @goodbye_text = 'Goodbye, My Dear Friend!'
  end
  
  def create
	@name = (params[:user])
	if @name != nil 
		redirect_to :action => 'list'
    else
		redirect_to :action => 'new'
    end
  end

end
