class Customer < ApplicationRecord
    has_one_attached :image

    validates :name, presence: true 
  
    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "email", "id", "name", "notes", "phonenumber", "updated_at"]
    end
  
    def self.ransackable_associations(auth_object = nil)
      ["image_attachment", "image_blob"]
    end
  end
  