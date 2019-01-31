class CreateAppointements < ActiveRecord::Migration[5.2]
  def change
    create_table :appointements do |t|
      t.datetime :date
      t.timestamps
    end
    add_reference :appointements, :doctor, foreign_key: true
    add_reference :appointements, :patient, foreign_key: true
  end
end
