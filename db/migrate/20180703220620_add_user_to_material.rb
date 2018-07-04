class AddUserToMaterial < ActiveRecord::Migration[5.1]
  def change
    change_table :materials  do |t|
      t.references :users, foreign_key: true
    end
  end
end
