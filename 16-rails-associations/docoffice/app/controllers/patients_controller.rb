class PatientsController < ApplicationController
  before_action :find_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
    @doctors = Doctor.all
  end

  def create
    patient = Patient.create (patient_params)
    redirect_to patient
  end

  def edit
    @doctors = Doctor.all
  end

  def update
    byebug
    @patient.update(patient_params)
    redirect_to @patient
  end

  def destroy
    @patient.destroy
    redirect_to patients_path  
  end

  private

  def find_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :doctor_id)
  end

end
