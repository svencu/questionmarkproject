class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :question
      t.timestamp
    end
  end
end
