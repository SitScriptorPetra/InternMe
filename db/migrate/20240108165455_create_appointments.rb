class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.string :status
      t.date :date

      t.timestamps
    end
  end
end
