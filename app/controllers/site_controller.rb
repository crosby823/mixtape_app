class SiteController < ApplicationController

  def home
  
  end

  def about
    @authors = ['Rebecca Wallach', 'Julie Crosby', 'Gracey Crosby Wallach']
  end

end
