# spec/models/comment_spec.rb
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { is_expected.to belong_to(:account) }
  it { is_expected.to belong_to(:post) }
  it { is_expected.to validate_presence_of(:message) }
  it { is_expected.to validate_length_of(:message).is_at_most(1000) }
end
