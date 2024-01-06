# frozen_string_literal: true

class Group < ApplicationRecord
  validates :name, presence: true
  validates :members, presence: true
end
