class CreateSpoilers < ActiveRecord::Migration
  def change
    create_table :spoilers do |t|
      t.string :film_title
      t.text :spoiler
      t.float :vote
      t.integer :vote_counter

      t.timestamps
    end
  end
end
