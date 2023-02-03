class CreateConnectionTests < ActiveRecord::Migration[7.0]
  def change
    create_table :connection_tests do |t|
      t.string :title

      t.timestamps
    end
  end
end
