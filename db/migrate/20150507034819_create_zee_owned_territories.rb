class CreateZeeOwnedTerritories < ActiveRecord::Migration
  def change
    create_table :zee_owned_territories do |t|
      t.string        :zee_name
      t.string        :zee_number
      t.string        :agreement_name
      t.string        :state
      t.string        :state_abbrev
      t.string        :city
      t.string        :zipcode

      t.timestamps
    end
    add_index(:zee_owned_territories, :zee_name)
    add_index(:zee_owned_territories, :zee_number)
    add_index(:zee_owned_territories, :agreement_name)
    add_index(:zee_owned_territories, :state)
    add_index(:zee_owned_territories, :state_abbrev)
    add_index(:zee_owned_territories, :city)
    add_index(:zee_owned_territories, :zipcode)
  end
end
