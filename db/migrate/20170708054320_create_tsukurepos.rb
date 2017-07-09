class CreateTsukurepos < ActiveRecord::Migration[5.0]
  def change
    create_table :tsukurepos do |t|
      t.text :content

      t.timestamps
    end
  end
end
