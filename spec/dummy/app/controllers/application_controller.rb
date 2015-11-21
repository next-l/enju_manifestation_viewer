class ApplicationController < ActionController::Base
  protect_from_forgery

  enju_leaf
  after_action :verify_authorized

  include Pundit
end
