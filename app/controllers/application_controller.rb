class ApplicationController < ActionController::Base
  protect_from_forgery
end

private
def under_construction
	render 'shared/under_construction'    
end
