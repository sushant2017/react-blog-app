class CreateApiV1Posts < ActiveRecord::Migration[7.1]
  def change
    create_table :api_v1_posts do |t|
      t.string :category
      t.string :title
      t.string :content
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end

  def down 
    drop_table :api_v1_post
  end
end
