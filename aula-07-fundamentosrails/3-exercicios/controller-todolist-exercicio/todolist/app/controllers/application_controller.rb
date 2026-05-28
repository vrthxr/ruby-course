class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  stale_when_importmap_changes
  protect_from_forgery with: :null_session
end
