class RemoveSpamTagFromUser < ActiveRecord::Migration
  def change
    User.find_by_email("charliembrodie@gmail.com").update_attribute :forem_state, "approved"
  end
end
