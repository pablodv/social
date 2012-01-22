class Dashboard::RealEstatesController < InheritedResources::Base
  before_filter :authenticate_user!
end
