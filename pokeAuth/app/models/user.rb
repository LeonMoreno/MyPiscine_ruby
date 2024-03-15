# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, :name, :auth_token, presence: true
  validates :email, uniqueness: true

  # Active Record Callbacks - after_initialize - 
  after_initialize :generate_auth_token

  def generate_auth_token
    unless auth_token.present? 
      self.auth_token = TokenGenerationService.generate
    end
  end
 
  # after_initialize do |user|
  #   puts "You have initialized an object! #{user.inspect}"
  # end
end
