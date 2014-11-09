class Project < ActiveRecord::Base
belongs_to :financial
has_many :occupants, dependent: :destroy

	validates :address, presence: true,
                    length: { minimum: 5 }
	
	validates :area, presence: true,
                    length: { minimum: 3 }	

    validates :city, presence: true,
                    length: { minimum: 2 }

    validates :owner, presence: true,
                    length: { minimum: 2 }

def to_s
	address
end

end
