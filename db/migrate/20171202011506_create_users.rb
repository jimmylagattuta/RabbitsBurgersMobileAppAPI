class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :admin
      t.boolean :employee
      t.string :secret_question
      t.string :secret_answer
      t.boolean :super_admin

      t.timestamps
    end
  end
end
