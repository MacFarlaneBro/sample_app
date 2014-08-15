class CreateAdmin < ActiveRecord::Migration
  def change

    User.create :email => 'doug.brodie@masteradviser.co.uk',
             :password => 'dangermouse',
             :password_confirmation => 'dangermouse',
             :admin => true,
             :forem_admin => true
  end
end
