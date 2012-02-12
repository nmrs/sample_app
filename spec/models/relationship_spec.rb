# == Schema Information
#
# Table name: relationships
#
#  id          :integer         not null, primary key
#  follower_id :integer
#  followed_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Relationship do

  let(:follower) { FactoryGirl.create(:user) }  
  let(:followed) { FactoryGirl.create(:user) }
  let(:relationship) { follower.relationship.build(followed_id: followed.id) }

  subject { relationship }

  it { should be_valid }
end
