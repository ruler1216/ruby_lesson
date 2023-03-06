class Health < ApplicationRecord
    def self.ransackable_attributes(auth_object=nil)
        ["year", "school_class", "class_number", "name", "created_at", "commute", "temperature", "etc", "save_time"]
    end
    validates :year,:school_class, :class_number, :name, :commute, :temperature, presence: true
end
