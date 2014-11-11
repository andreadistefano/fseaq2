class HomeController < ApplicationController
  def index
  	@prova = AnnoScout.current
  end
end
