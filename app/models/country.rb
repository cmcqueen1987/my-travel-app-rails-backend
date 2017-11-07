# frozen_string_literal: true

class Country < ApplicationRecord
  belongs_to :user

  # validates :countries, :user, presence: true
end
