class HomeController < ApplicationController
  def index
  	@prova = AnnoScout.current
  	csv_path  = "app/classes/dataset.csv"
  	@rows = nil
  	if File.exist?(csv_path)
  	  @rows = Parser.parse(csv_path)
  	end
  	@notizie = Notizia.all
  end
end
