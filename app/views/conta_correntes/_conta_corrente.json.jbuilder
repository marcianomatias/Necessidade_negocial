json.extract! conta_corrente, :id, :saldo, :cliente_id, :numero, :agencia, :created_at, :updated_at
json.url conta_corrente_url(conta_corrente, format: :json)
