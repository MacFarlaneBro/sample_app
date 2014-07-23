class Backend::ResourceController < Backend::ApplicationController
  inherit_resource
  respond_to :html
end
