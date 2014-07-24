# This migration comes from forem (originally 20111208014437)
class CreateForemSubscriptions < ActiveRecord::Migration
  def change
    drop_table :forem_subscriptions
    create_table :forem_subscriptions do |t|
      t.integer :subscriber_id
      t.integer :topic_id
    end
  end
end
