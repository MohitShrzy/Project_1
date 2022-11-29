class Total < ActiveRecord::Migration[6.0]
  def change
    add_column :marks, :total,:integer
    add_reference :marks, :students ,foreign_key: true
  end
end
