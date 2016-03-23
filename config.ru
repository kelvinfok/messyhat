# This file is used by Rack-based servers to start the application.
require 'pg_search'
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
