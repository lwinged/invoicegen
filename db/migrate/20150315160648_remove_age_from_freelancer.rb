class RemoveAgeFromFreelancer < ActiveRecord::Migration
  def change
    remove_column :freelancers, :age, :int
  end
end
