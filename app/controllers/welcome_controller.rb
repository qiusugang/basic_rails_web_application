class WelcomeController < ApplicationController
  layout :switchlayout

  def index
  end

  def starter
  end

  private

  def switchlayout
    if action_name == "starter"
      return "museui"
    else
      return "application"
    end
  end

end
