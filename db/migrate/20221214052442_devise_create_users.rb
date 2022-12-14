# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      add index :name,               null: false
      add index :email,              null: false, default: ""
      add index :encrypted_password, null: false, default: ""
  end
end
