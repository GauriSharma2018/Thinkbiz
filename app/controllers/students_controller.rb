class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :update,:destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      redirect_to students_path, notice: I18n.t('errors.information.created')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to students_path, notice: I18n.t('errors.information.updated')
    else
      render :edit
    end
  end

  def destroy
    if @student.destroy
      redirect_to students_path, notice: I18n.t('errors.information.deleted')
    else
      redirect_to students_path, notice: I18n.t('errors.not_deleted')
    end
  end

  private

  def student_params
    params[:student].permit(:name, :subject_id)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
