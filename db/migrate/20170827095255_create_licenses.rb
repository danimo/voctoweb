class CreateLicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :licenses do |t|
      t.string :name
      t.string :image
      t.string :fulltext_url

      t.timestamps
    end

    add_reference :event, :license, foreign_key: true
  end
end
