# spec/controllers/followers_controller_spec.rb
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FollowersController, type: :controller do
  let(:user1) { create :account }
  let(:params) { { account_id: user1 } }
  before { sign_in user1 }

  let(:user2) { create :account }
  let!(:follow) { create :follow, follower: user2, following: user1 }

  describe 'index' do
    subject { get :index, params: params }

    let(:follower) { user1.followers }

    it 'assigns @followers' do
      subject
      expect(assigns(:followers)).to eq(follower)
    end

    it { is_expected.to render_template('index') }
  end
end
