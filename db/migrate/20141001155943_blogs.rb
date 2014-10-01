class Blogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :first_name
      t.string :last_name
      t.string :blog_url
      t.string :class
      t.timestamps
    end
  end
end
