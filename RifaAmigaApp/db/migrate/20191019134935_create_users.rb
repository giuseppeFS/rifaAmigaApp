class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :cpf
    	t.string :name
    	t.string :email
    	t.string :password
    	t.string :address
    	t.string :number
    	t.string :complement
    	t.string :neighborhood
    	t.string :zipCode
    	t.string :ddd_phone
    	t.string :phone_number
    	t.string :ddd_cellphone
    	t.string :cellphone_number
    	t.string :city_id

    	# Colunas padrao do rails
    	t.datetime :created_at
    	t.datetime :updated_at
    end
  end
end
