class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text   :content, null: false
      t.timestamps
    end
  end

  def down
    drop_table :posts
  end
end
