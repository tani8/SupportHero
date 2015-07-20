class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :password, :image_url
      t.json :schedule

      t.timestamps null: false
    end
  end
end
