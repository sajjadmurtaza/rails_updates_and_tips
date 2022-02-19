# frozen_string_literal: true

class Student < ApplicationRecord
  encrypts :account_number, deterministic: true
end
