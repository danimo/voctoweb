class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :guid
      t.string :gif_filename
      t.string :poster_filename
      t.references :conference, index: true

      t.timestamps
    end
  end
end
