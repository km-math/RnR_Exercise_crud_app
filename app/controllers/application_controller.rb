class ApplicationController < ActionController::Base

  def intro
    render html: "Hello this is a Welcome page of CRUD App. "
  end

end
