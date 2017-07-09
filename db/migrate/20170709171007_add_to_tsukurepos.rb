class AddToTsukurepos < ActiveRecord::Migration[5.0]
  def change
    add_reference :tsukurepos, :user, foreign_key: true
    add_reference :tsukurepos, :recipe, foreign_key: true
  end
end
