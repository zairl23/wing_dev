RailsAdmin.config do |config|
  config.model Shige do
    edit do
      field :name, :string
      field :content, :text do
        ckeditor  true
      end
      field :poemtry_id, :integer
    end
  end

  config.model Autor do
    edit do 
      field :name,:string 
      field :description,:text do
        ckeditor true
      end
      field :links,:text do
        ckeditor true
      end
   end
end
  
   config.model Book do 
     edit do 
      field :name,:string
      field :description, :text do
         ckeditor true
      end
      field :links,:text do 
        ckeditor true
      end
    field :summary,:text do 
        ckeditor true
      end
    field :url,:string 
    field :autor_id,:integer
   end
end

   config.model Album do
     edit do
       field :name ,:string
       field :shijian,:date
       field :description,:text do
         ckeditor true
       end
       field :url,:string
       field :links,:text do
         ckeditor true
       end
       field :autor_id,:integer
    end
end

   config.model Poemtry do
     edit do 
       field :name,:string
       field :shijian,:date
       field :description,:text do
          ckeditor true
       end
       field :url,:string
       field :autor_id,:integer
       field :autor_id,:integer
    end
end

  config.model Tupian do
    edit do 
      field :name,:string
      field :description,:text do
        ckeditor true
      end
      field :tag,:string 
      field :pic,:paperclip_file do 
        thumb_method :thumb # for images. Will default to full size image, which might break the layout,add ':paperclip_file'
        delete_method :delete_pic # actually not needed in this case: default is "delete_#{field_name}" if the object responds to it
      end
      
      
    end
  end
  
  #config.model User do 
  # edit do
   #  field :email,:string
    # field :password,:string
    #field :password_confirmation,:string
     #field :admin,:boolean do
       #formatted_value do
         #bindings[:view].image_tag("rails_admin/#{value ? 'bullet_black' : 'bullet_white'}.png", :alt => value.to_s)
       #end 
     #end  
   #end
# use a custom dead-stupid authorization rule:
 # config.authorize_with do
  #  redirect_to root_path unless warden.user.is_admin?
 # end
  #end 
  
  config.authorize_with :cancan
end
