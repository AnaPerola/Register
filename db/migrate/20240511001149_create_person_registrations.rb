class CreatePersonRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :person_registrations do |t|
      t.string :name
      t.string :cpf
      t.boolean :active
      t.timestamps
    end
  end
end
