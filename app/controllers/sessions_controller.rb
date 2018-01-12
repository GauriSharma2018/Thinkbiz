class SessionsController < ApplicationController
  skip_before_action :login_check
  layout 'login'
  
  def index
    # セッションクリア
    reset_session
  end

  def login
    account = Account.find_by_account(login_params[:account])
    if account.present? && account.authenticate(login_params[:password])
      session[:account_id] = account.id
      redirect_to students_path
    else
      flash.now[:alert] = I18n.t('errors.messages.login_failed')
      render :index
    end
  end

  def logout
    reset_session
    redirect_to root_path,notice: I18n.t('errors.information.logout')
  end

  private
    def login_params
      params.require(:session).permit(
        :account,
        :password
      )
    end

end
