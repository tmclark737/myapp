class FinancialIdToProjectsTable < ActiveRecord::Migration
  def change
  	remove_column :financials, :project_id, :integer
  	

  	  change_table :projects do |t|
  	  t.references :financial, :index => true
      end

  end
end
