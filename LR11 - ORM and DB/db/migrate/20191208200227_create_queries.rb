# frozen_string_literal: true

class CreateQueries < ActiveRecord::Migration[5.2]
  def change
    create_table :queries do |t|
      t.integer :query_counter # @query_counter
      t.integer :digit # @digit
      t.string :arm_num # @result

      t.timestamps
    end
  end
end
