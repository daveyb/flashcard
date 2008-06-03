class CreateCardsets < ActiveRecord::Migration
  def self.up
    create_table :cardsets do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :user

      t.timestamps
    end
  end

  def self.down
    drop_table :cardsets
  end
end
