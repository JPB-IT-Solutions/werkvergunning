class CreateEnquiryMeasures < ActiveRecord::Migration
  def change

    create_table :enquiry_measures do |t|
      t.belongs_to :enquiry, index: true
      t.belongs_to :measure, index: true
      t.boolean :done
      t.string :responsible
      t.boolean :needed
      t.timestamps null: false
    end
  end
end
