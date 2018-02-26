class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :source
      t.string :zip
      t.string :frannum

      t.timestamps
    end
  end
end
