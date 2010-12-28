class CreatePayrollCategories < ActiveRecord::Migration
  def self.up
    create_table :payroll_categories do |t|
      t.string :name
      t.float  :percentage
      t.references :payroll_category
      t.tinyint :is_deduction
      t.tinyint :status
    end
  end

  def self.down
    drop_table :payroll_categories
  end
end
