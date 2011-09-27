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

 # config.model Picture do
  #  edit do 
   #   field :name,:string
    #  field :description,:text do
     #   ckeditor true
      #end
      #field :tag,:string 
      #field :image_file_name,:paperclip_file do
       # thumb_method :thumb # for images. Will default to full size image, which might break the layout
       # delete_method :delete_image # actually not needed in this case: default is "delete_#{field_name}" if the object responds to it
      #end
      
      
    #end
  #end
 
   
end
