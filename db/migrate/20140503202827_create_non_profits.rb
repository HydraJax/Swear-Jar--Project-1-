class CreateNonProfits < ActiveRecord::Migration
  def change
    create_table :nonprofits do |t|
      t.string :name
      t.string :amount
      t.references :user, index: true

      t.timestamps
    end
  end
end
