class AddIsAdminToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :isAdmin, :boolean, null: false, default: false
  end
end
