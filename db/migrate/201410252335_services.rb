class Services < ActiveRecord::Migration
  def self.up
     create_table :services do |t|
	t.column :name, :string, :limit => 32, :null => false
	t.column :company, :integer
	t.column :user, :integer
	t.column :date, :timestamp
	t.column :rate, :integer
	t.column :paid, :boolean
end
  end

  def self.down
    drop_table :services
  end
end