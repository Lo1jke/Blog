class SayController < ApplicationController
  def hello
  @time = Time.now
  @name = nil
  end

  def goodbye
  @goodbye_text = 'Goodbye, My Dear Friend!'
  end

end
