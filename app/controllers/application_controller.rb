class ApplicationController < ActionController::Base
  include Trailblazer::Operation::Controller
  require 'trailblazer/operation/controller/active_record'
  include Trailblazer::Operation::Controller::ActiveRecord # named instance variables.

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
