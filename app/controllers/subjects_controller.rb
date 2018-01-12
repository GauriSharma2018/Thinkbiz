class SubjectsController < ApplicationController
  before_action :set_subject, only: [:edit, :update,:destroy]

  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.create(subjects_params)
    if @subject.save
      redirect_to subjects_path, notice: I18n.t('errors.information.created')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @subject.update(subjects_params)
      redirect_to subjects_path, notice: I18n.t('errors.information.updated')
    else
      render :edit
    end
  end

  def destroy
    if @subject.destroy
      redirect_to subjects_path, notice: I18n.t('errors.information.deleted')
    else
      redirect_to subjects_path, notice: I18n.t('errors.not_deleted')
    end
  end

  private

  def subjects_params
    params[:subject].permit(:name, :student_id)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end
end
