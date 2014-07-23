class Backend::ResourceController < Backend::ApplicationController
  inherit_resource
  respond_to :html
  has_scope :page, default: 1
  self.responder = Backend.Responder
  
  http_basic_authenticate_with name: "masteradivser", password: "Now is the time for all good men"
end
