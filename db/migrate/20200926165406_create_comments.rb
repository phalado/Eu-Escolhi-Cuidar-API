class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :article
      t.string :content
      t.boolean :edited
      t.integer :likes
      t.boolean :author_like

      t.timestamps
    end
  end
end
