class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title, null: false
      t.text :content, null: false
      # t.references :user_id
      t.timestamps
    end
  end
end
