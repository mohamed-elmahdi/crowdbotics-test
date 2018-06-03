class AddDisplayedToPhrase < ActiveRecord::Migration[5.2]
  def change
    add_column :phrases, :displayed, :boolean, default: false
  end
end
