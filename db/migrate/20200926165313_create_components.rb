class CreateComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :components do |t|
      t.references :article
      t.string :content
      t.string :type

      t.timestamps
    end
  end
end
