class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.belongs_to :category, index: true
      t.belongs_to :classified, index: true

      t.timestamps
    end
  end
end
