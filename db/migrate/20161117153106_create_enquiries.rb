class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :Reference
      t.string :Location
      t.text :Description
      t.integer :Amount
      t.date :Date
      t.time :Time

      t.timestamps null: false
    end
  end
end
