# frozen_string_literal: true

# implement a one-to-many relationship
class AddForeignKeyToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :accounts
    add_foreign_key :comments, :posts
  end
end
