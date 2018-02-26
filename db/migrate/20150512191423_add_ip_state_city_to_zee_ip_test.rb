class AddIpStateCityToZeeIpTest < ActiveRecord::Migration
  def change
    add_column    :zee_ip_tests,    :ip_state,    :string,    :after => :test_ip
    add_column    :zee_ip_tests,    :ip_city,     :string,    :after => :ip_state
  end
end
