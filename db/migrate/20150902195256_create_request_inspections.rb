class CreateRequestInspections < ActiveRecord::Migration
  def change
    create_table :request_inspections do |t|
      t.string      :name
      t.string      :phone
      t.string      :email
      t.string      :zip_code

      t.timestamps
    end
  end
end
