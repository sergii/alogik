# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Authlogik
Authlogic::Session::Base.controller = Authlogic::ControllerAdapters::RailsAdapter.new(self)

# Initialize the Rails application.
Alogik::Application.initialize!
