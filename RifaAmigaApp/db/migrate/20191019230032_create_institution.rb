class CreateInstitution < ActiveRecord::Migration[5.1]
  def change
    create_table  :institutions do |t|
    	t.string  :cnpj
        t.string  :email
        t.string  :password
    	t.string  :corporate_name
    	t.string  :qualification
    	t.string  :state_registration
        t.float   :rating
        t.boolean :status

    	# Colunas padrao do rails
    	t.datetime :created_at
    	t.datetime :updated_at
    end
  end
end
