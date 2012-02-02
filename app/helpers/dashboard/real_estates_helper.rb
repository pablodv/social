module Dashboard::RealEstatesHelper

  def alpha_omega(collection, current)
    if collection.first == current
      'alpha'
    elsif collection.last  == current
      'omega'
    end
  end

end
