class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :vet
      t.string :customer
      t.string :pet
      t.datetime :visit_on
      t.string :reason

      t.timestamps
    end
    add_index :appointments, :vet_id
  end
end
