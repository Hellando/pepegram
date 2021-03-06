# frozen_string_literal: true

# add avatar and biography columns to the accounts table
class AddAvatarAndBioToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :avatar_data, :text
    add_column :accounts, :bio, :text
  end
end
