class CreatePatientNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :patient_notes do |t|
      t.text :note
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
