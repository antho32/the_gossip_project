class CreatePrivatemessages < ActiveRecord::Migration[6.1]
  def change
    create_table :privatemessages do |t|
      t.text :content
      t.references :recipient, index: true
      t.references :sender, index: true

      t.timestamps
    end
  end
end
