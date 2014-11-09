# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Don't pluralize table names
ActiveRecord::Base.pluralize_table_names = false


# PLURALIZATION RULES
ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'socio', 'soci'
end