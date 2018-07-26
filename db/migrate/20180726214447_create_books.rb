class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, id: :uuid do |t|
      t.belongs_to :author, type: :uuid, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
