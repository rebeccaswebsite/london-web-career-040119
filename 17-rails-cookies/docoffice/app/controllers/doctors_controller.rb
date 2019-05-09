class DoctorsController < ApplicationController
  before_action :find_doctor, only: [:show, :edit, :update, :destroy]
  before_action :set_doctors_seen, only: [:index, :show]

  def index
    byebug
    @doctors = Doctor.all
    @doctors = @doctors.select do |doctor|
      !(session[:doctors_seen].include? doctor.id)
    end
  end

  def show
    if !(session[:doctors_seen].include? @doctor.id)
      session[:doctors_seen] << @doctor.id
    end
  end

  def new
    @doctor = Doctor.new
  end

  def create
    doctor = Doctor.create (doctor_params)
    if doctor.valid?
      redirect_to doctor
    else
      flash[:errors] = doctor.errors.full_messages
      redirect_to new_doctor_path
    end
  end

  def edit
  end

  def update
    @doctor.update(doctor_params)
    redirect_to @doctor
  end


  def destroy
    @doctor.destroy
    redirect_to doctors_path  
  end

  private

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :specialty)
  end

  def set_doctors_seen
    session[:doctors_seen] ||= []
  end
end
