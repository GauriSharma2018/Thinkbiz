class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :login_check
  helper_method :current_account

  # ログインユーザーを返却
  def current_account
    if session[:account_id]
      @current_account ||= Account.find_by(id: session[:account_id])
    else
      redirect_to root_path, notice: I18n.t('errors.information.no_account_id')
    end
  end

  def login_check
    # ログイン時の共通チェックを行う
    redirect_to root_path unless current_account
  end
end
