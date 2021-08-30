require "pry"

class Gym < ActiveRecord::Base
  has_many :memberships
  has_many :members, through: :memberships

  def self.best_value
    gym_value = []
    all.map do |gym|
      value = gym.price / gym.rating
      gym_with_value = [gym, value]
      gym_value << gym_with_value
    end
    gym_value.sort { |a, b| a[1] <=> b[1] }[0][0]
  end

  def join_gym(member, start_year, start_month)
    Membership.create(member: member, gym: self, start_year: start_year, start_month: start_month)
  end

  def print_all_memberships
    memberships.map {|membership| membership.print_membership}
  end

  def first_member
    memberships.order(:start_year).limit(1)[0]
  end
end
