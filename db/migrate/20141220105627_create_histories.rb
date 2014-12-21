class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories, id: false do |t|
      t.string :id
      t.string :customer_id
      t.datetime :check_day
      t.string :meter
      t.string :last_meter
      t.timestamps
    end

    execute 'ALTER TABLE histories ADD PRIMARY KEY(id);'
  end
end
