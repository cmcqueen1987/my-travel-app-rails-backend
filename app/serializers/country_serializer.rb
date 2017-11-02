# frozen_string_literal: true

class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :user
end
