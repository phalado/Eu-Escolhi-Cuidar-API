class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :summary
      t.string :keywords, array: true, default: []
      t.string :tittle
      t.integer :components, array: true, default: []
      t.integer :likes
      t.datetime :published_at

      t.timestamps
    end
  end
end
