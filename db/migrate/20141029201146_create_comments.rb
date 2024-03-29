class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.integer :user_id
      t.references :user, index: true
      t.references :article, index: true

      t.timestamps
    end
  end
end
