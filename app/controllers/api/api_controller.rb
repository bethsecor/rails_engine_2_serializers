class Api::Api_Controller < ApplicationController
  protect_from_forgery with: :null_session
end
