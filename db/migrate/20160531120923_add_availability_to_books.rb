class AddAvailabilityToBooks < ActiveRecord::Migration
  def change
    add_column :books, :available, :boolean
  end
end
