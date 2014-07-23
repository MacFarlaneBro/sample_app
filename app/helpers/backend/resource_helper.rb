module Backend::ResourceHelper

  #this method defines the columns to be displayed in the view page for each backend resource
  def attributes
    resource_class.attribute_names - %w(id created_at updated_at)
  end

end
