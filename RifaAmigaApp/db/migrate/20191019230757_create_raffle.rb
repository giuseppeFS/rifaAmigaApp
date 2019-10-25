class CreateRaffle < ActiveRecord::Migration[5.1]
  def change
    create_table   :raffles do |t|
    	t.integer  :institution_id
    	t.integer  :category_id
    	t.text     :descripion
    	t.float    :value
    	t.datetime :draw_ate
    	t.string   :prize
    	t.integer  :status # 1 = Ativo, 2 = Aguardando Sorteio, 3 = Encerrado, 4 = Cancelada

    	# Colunas padrao do rails
    	t.datetime :created_at
    	t.datetime :updated_at
    end
  end
end
