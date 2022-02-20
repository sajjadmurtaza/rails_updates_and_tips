# frozen_string_literal: true

class Student < ApplicationRecord
  encrypts :account_number, deterministic: true

  has_many :addresses

  scope :with_addresses, -> { where.associated(:addresses) }
  scope :without_addresses, -> { where.missing(:addresses) }
end
