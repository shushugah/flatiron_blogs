class Blogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :blog_url
      t.string :class
      t.timestamps
    end
  end
end
