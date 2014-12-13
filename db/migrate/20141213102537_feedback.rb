class Feedback < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :feedback
      t.references :user

      t.timestamps
    end
  end
end
