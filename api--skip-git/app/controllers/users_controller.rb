class UsersController < ApplicationController

    def register
        user = User.create(user_params)
        if user.valid?
            app_response(message: 'Registrationwas succesful', status: :created, data: user)
            
        else 
            app_response(message: "something went wrong",status: :unprocessable_entity, data: users.errors)
    
        end
    end
    private

    def user_params
        params.permit(:username, :email, :password)
    end
end
