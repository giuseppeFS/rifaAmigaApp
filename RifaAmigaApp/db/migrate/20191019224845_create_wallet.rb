class CreateWallet < ActiveRecord::Migration[5.1]
  def change
    create_table :wallets do |t|
    	t.integer  :user_id
    	t.float    :balance

    	# Colunas padrao do rails
    	t.datetime :created_at
    	t.datetime :updated_at
    end
  end
end
