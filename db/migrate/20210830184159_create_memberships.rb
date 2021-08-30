class CreateMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.integer :member_id
      t.integer :gym_id
      t.integer :start_year
      t.string :start_month
    end
  end
end
