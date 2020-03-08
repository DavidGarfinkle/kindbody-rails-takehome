class PatientNotesController < ApplicationController
  def show
    @patient = Patient.find(params[:patient_id])
    @note = PatientNote.find(params[:id])
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @note = @patient.patient_notes.create(note_params)
    redirect_to patient_path(@patient)
  end

  def edit
    @patient = Patient.find(params[:patient_id])
    @patient_note = PatientNote.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:patient_id])
	@note = PatientNote.find(params[:id])
   
	if @note.update(note_params)
	  redirect_to @patient
	else
	  render 'edit'
	end
  end

  def destroy
    @patient = Patient.find(params[:patient_id])
	@note = PatientNote.find(params[:id])
   
	@note.destroy
    redirect_to @patient
  end

  private
    def note_params
      params.require(:patient_note).permit(:note)
    end
end
