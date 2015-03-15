class CreateFreelancers < ActiveRecord::Migration
  def change
    create_table :freelancers do |t|
      t.string :email
      t.string :name
      t.string :firstname

      t.timestamps null: false
    end
  end
end
