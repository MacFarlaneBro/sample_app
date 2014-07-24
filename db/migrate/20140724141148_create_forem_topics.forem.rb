# This migration comes from forem (originally 20110221092741)
class CreateForemTopics < ActiveRecord::Migration
  def change
    drop_table :forem_topics
    create_table :forem_topics do |t|
      t.integer :forum_id
      t.integer :user_id
      t.string :subject

      t.timestamps
    end
  end
end
