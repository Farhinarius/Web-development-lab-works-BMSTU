# frozen_string_literal: true

class AddEmailToQueries < ActiveRecord::Migration[5.2]
  def change
    add_column :queries, :email, :string
  end
end
