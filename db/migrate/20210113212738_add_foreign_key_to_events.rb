class AddForeignKeyToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :event_creator, references: :user, foreign_key: true
  end
end
