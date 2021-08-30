class Member < ActiveRecord::Base
  has_many :memberships
  has_many :gyms, through: :memberships

  def latest_gym
    gyms.order(start_year: :desc).limit(1)[0]
  end

  def remove_membership(gym)
    memberships.find_by(gym_id: gym.id).destroy
  end
end
