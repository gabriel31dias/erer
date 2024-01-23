class Banner < ApplicationRecord
    has_one_attached :image


         
           def self.ransackable_associations(auth_object = nil)
            ["active", "description", "image", "id",  "name"]
          end

          def self.ransackable_attributes(auth_object = nil)
            ["active", "description", "image", "id", "name", "image_attachment_id", "image_blob_id"]

          end
end