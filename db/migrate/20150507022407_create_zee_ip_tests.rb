class CreateZeeIpTests < ActiveRecord::Migration
  def change
    create_table :zee_ip_tests do |t|
      t.string        :test_ip
      t.string        :geo_state
      t.string        :geo_city
      t.string        :zee_name
      t.string        :zee_number

      t.timestamps
    end
    add_index(:zee_ip_tests, :test_ip)
    add_index(:zee_ip_tests, :geo_state)
    add_index(:zee_ip_tests, :geo_city)
    add_index(:zee_ip_tests, :zee_name)
    add_index(:zee_ip_tests, :zee_number)
  end
end
