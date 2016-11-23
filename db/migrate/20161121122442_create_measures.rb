class CreateMeasures < ActiveRecord::Migration
  def change

    create_table :measures do |t|
      t.string :measurement
      t.string :type
      t.date :valid_from
      t.date :valid_to
    end
  end
end
