class AddRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string, presence: { in: ["admin", "user"] }, default: "user"
  end
end
