
namespace :zee_widget do
  
  # RAILS_ENV=production rake zee_widget:test_ips
  desc "test next ip block range against locations to zees to check if right owners load for right areas"
  task :test_ips, [:city_count, :country] => :environment do |t, args|
    p 'LETS TEST THIS THING'

    # Defaults
    city_count = (args[:city_count]) ? args[:city_count] : 50
    country = (args[:country]) ? args[:country] : 'US'

    ZeeWidgetTest.test_ips(city_count,country)
  end

end
