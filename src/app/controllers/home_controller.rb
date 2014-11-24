class HomeController < ApplicationController
  def index
    @prova = AnnoScout.current
    csv_path  = "app/classes/dataset.csv"
    @rows = nil
    if File.exist?(csv_path)
      @rows = Parser.parse(csv_path)
    end
    @notizie = Notizia.order("updated_at").page(params[:page]).per(3)
  end
end
