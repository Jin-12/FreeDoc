class CreateJoinTableDoctorsSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_doctors_specialties do |t|
      t.timestamps
    end
    add_reference :join_table_doctors_specialties, :doctor, foreign_key: true
    add_reference :join_table_doctors_specialties, :specialty, foreign_key: true
  end
end
