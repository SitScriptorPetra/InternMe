class CreateHelpGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :help_groups do |t|
      t.string :topic

      t.timestamps
    end
  end
end
