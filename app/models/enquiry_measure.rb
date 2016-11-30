class EnquiryMeasure < ActiveRecord::Base
	belongs_to :enquiry, :class_name => 'Enquiry' #, inverse_of: :enquiry_measures
 		 validates_presence_of :enquiry
	has_many :measure, :class_name => 'Measure'
end
