class Companies < ActiveRecord::Migration
  def self.up
     create_table :companies do |t|
	t.column :name_fantasy, :string, :limit => 32, :null => false
	t.column :name_commercial, :string, :limit => 32, :null => false
	t.column :email, :text
	t.column :webpage, :text
	t.column :sector, :text
	t.column :address, :text
	t.column :representative, :text
	t.column :giro, :text
     end
  end

  def self.down
    drop_table :companies
  end
end