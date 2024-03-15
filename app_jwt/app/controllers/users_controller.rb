# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]
  # before_action :find_user, only: [:show]

  # GET /users
  def index
    users = User.all
    render json: users, status: :ok
  end

  # GET /users/{username}
  def show
    puts "show params = #{params.inspect}"
    puts "show request = #{request.headers}"
    request.headers.each do |key, value|
      puts "key = #{key}, value = #{value}"
    end
    puts "boby = #{request.body.read}"
    user = User.find_by(username: params[:id])

    render json: user, status: :ok
  end

  # PUT /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def find_user
    User.find_by(username: params[:id])
  end

  def user_params
    params.permit(
      :name, :username, :email, :password, :password_confirmation
    )
  end

end
