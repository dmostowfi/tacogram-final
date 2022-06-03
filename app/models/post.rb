class Post < ApplicationRecord
    has_one_attached :uploaded_image 
    #add an attribute to the post model; call it uploaded_image; gonna have ONE attachment
end
