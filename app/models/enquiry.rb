class Enquiry < ActiveRecord::Base
	  cattr_accessor :form_steps do
    %w(basic when)
  end
  accepts_nested_attributes_for :enquiry_measures

  attr_accessor :form_step

  validates :Reference, :Location, presence: true, if: -> { required_for_step?(:basic) }
  validates :Amount, :Date, presence: true, if: -> { required_for_step?(:when) }
  # validates :special_instructions, presence: true, if: -> { required_for_step?(:instructions) }

  def required_for_step?(step)
    return true if form_step.nil?
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end


end
