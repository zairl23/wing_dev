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
end
