class CreateEventAttends < ActiveRecord::Migration[5.0]
  def change
    create_table :event_attends do |t|
      t.belongs_to :event
      t.belongs_to :attendee, references: :user
      
      t.timestamps
    end
  end
end
