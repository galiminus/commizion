class AddStateToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :state, :string
  end
end
