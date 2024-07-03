class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|

      t.string :name
      t.string :username, index: { unique: true, name: 'unique_username' }
      t.string :email, index: { unique: true, name: 'unique_emails' }
      t.string :password

      t.timestamps
    end
  end
end
