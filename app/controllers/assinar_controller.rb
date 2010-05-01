class AssinarController < ApplicationController

  def index
    @planos = Plano.find :all, :order => 'ordem'
    @user = User.new
  end

  def cadastro
    logout_keeping_session!
    
    @user = User.new(params[:user])
    @user.plano = Plano.find_by_id params[:plano]

    success = @user && @user.save

    if success && @user.errors.empty?
      #self.current_user = @user # !! now logged in
      #redirect_back_or_default('/site')
      session[:cadastro] = @user
      #redirect_to :action => 'pagamento'
      self.current_user = @user # !! now logged in
      redirect_back_or_default('/site')

      flash[:notice] = "Você foi cadastrado com sucesso..."
    else
      flash[:error]  = "Desculpe, sua conta não pode ser criada.  Por favor, tente mais tarde ou entre em contato com a administração do site."
      render :action => 'index'
    end
  end

  def pagamento
    @user = session[:cadastro]
    @user.reload
    #render :text=>@user.plano_id.to_s
    plano = @user.plano

    @order = PagSeguro::Order.new("#{@user.id}-#{@user.plano_id}")
    @order.add :id => plano.id, :price => plano.valor.reais.sem_delimitador_decimal, :description => plano.descricao, :quantity=>1
  end

end
