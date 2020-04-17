class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end 
    
        def show
        user = User.find(params[:id])
        render json: user
        end 

        def create
        user = User.new(name: params['name'], email: params['email'], money: params['money'])
        user.save
        render json: user
        end 

        def login
            user = User.find_by(name: params[:name], email: params[:email])
            if user != nil
                render json: user
            else 
                render json: {message: 'loggin Failed'}
            end
        end 

    
        def destroy
            user = User.find(params[:id])
            user.destroy
            render json: user
        end


        private 
    
        def user_params
            params.require(:product).permit(:name, :email, :money)
        end
    
end