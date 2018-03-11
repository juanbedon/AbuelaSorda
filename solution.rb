require 'sinatra'

get '/' do
  erb :index
end

get '/abuela-dice' do
	@valor_de_entrada = params[:valor_de_entrada]
	if @valor_de_entrada == @valor_de_entrada.upcase
		valor_de_entrada = "<h1>Ahhh si, manzanas!</h1>"
	else
		valor_de_entrada = "<h1>Habla más duro mijito</h1>"
	end
    valor_de_entrada
end