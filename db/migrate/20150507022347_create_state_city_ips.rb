class CreateStateCityIps < ActiveRecord::Migration
  def change
    create_table :state_city_ips do |t|
      t.string        :ip_start
      t.string        :ip_end
      t.string        :country
      t.string        :state
      t.string        :state_abbrev
      t.string        :city
      t.string        :tested

      t.timestamps
    end
    add_index(:state_city_ips, :ip_start)
    add_index(:state_city_ips, :ip_end)
    add_index(:state_city_ips, :country)
    add_index(:state_city_ips, :state)
    add_index(:state_city_ips, :state_abbrev)
    add_index(:state_city_ips, :city)
    add_index(:state_city_ips, :tested)
  end
end
