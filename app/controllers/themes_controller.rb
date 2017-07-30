class ThemesController < ApplicationController
  def new
    form Theme::Create
  end

  def create
    run Theme::Create do |op|
      puts '========= Test ============='
      redirect_to themes_path
    end
  end
end
