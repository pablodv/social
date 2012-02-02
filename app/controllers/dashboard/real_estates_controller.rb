class Dashboard::RealEstatesController < InheritedResources::Base
  before_filter :authenticate_user!

  def create
    create!{ upload_images_dashboard_real_estate_path(resource) }
  end

  def upload_images
    @real_estate = RealEstate.find params[:id]
    5.times{ @real_estate.medias.build }
  end
end
