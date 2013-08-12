class OauthApplicationsController < Doorkeeper::ApplicationsController
  before_filter :authenticate_administrator!
end
