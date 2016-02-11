class CreateNewbooks < ActiveRecord::Migration
  def change
    create_table :newbooks do |t|
      t.string :Name
      t.string :Author

      t.timestamps null: false
    end
  end
end
