class Project < ActiveRecord::Base

has_many :occupants, dependent: :destroy

	validates :address, presence: true,
                    length: { minimum: 5 }
	
	validates :area, presence: true,
                    length: { minimum: 3 }	

    validates :city, presence: true,
                    length: { minimum: 2 }

    validates :owner, presence: true,
                    length: { minimum: 2 }


end
