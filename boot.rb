require 'date'
require "./app/sorter.rb"
require "./app/city.rb"

def require_all(_dir)
  Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/**/*.rb"].each do |file|
    require file
  end
end

require_all 'app'
