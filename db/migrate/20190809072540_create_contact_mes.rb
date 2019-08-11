class CreateContactMes < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_mes do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end
