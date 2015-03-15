class AddAgeToFreelancer < ActiveRecord::Migration
  def change
    add_column :freelancers, :age, :int
  end
end
