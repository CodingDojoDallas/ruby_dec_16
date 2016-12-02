class SayController < ApplicationController
  def hello
  end

  def hellojoe
  end

  def hellomichael
      redirect_to "/say/hello/joe"
  end

  def  index

  end
end
