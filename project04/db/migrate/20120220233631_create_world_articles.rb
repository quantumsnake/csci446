class CreateWorldArticles < ActiveRecord::Migration
  def change
    create_table :world_articles do |t|
      t.string :title
      t.string :author
      t.text :body

      t.timestamps
    end
  end
end
