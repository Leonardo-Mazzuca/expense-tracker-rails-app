class CreateExpenses < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.float :value
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
