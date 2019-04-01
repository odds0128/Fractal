class Api::UsersController < ApplicationController
    # protect_from_forgery :except => [:create]

    # GET /users
    # TODO: そのうちユーザーネームにする
    def get_email
        @username = current_user.email
    end
end
