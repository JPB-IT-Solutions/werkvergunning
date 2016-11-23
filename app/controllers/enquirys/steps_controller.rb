class Enquirys::StepsController < ApplicationController
include Wicked::Wizard
  steps *Enquiry.form_steps


  def show
    @enquiry = Enquiry.find(params[:enquiry_id])
    render_wizard
  end

  def update
    @enquiry = Enquiry.find(params[:enquiry_id])
    @enquiry.update(pet_params(step))
    render_wizard @enquiry
  end

  private

  def enquiry_params(step)
    permitted_attributes = case step
                           when "basic"
                             [:Reference, :Location, :Description]
                           when "when"
                             [:Amount, :Date]
                          # when "instructions"
                            # [:special_instructions]
                           end

    params.require(:enquiry).permit(permitted_attributes).merge(form_step: step)
  end

end
