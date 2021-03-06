class UsersController < ApplicationController

    def index
        @users = User.all
      end

      def show
        @user = User.find(params[:id])
        # @users = @user.users
      end

      def new
        @user = User.new()
      end

      def create
        @user = User.create(user_params)
          if @user.valid?
            redirect_to users_path
          else
            render "new"
          end
      end

      def edit
        @user = User.find(params[:id])
      end

      def update
        @user = User.find(params[:id])
        @user.update(user_params)
        @user.save
        redirect_to @user
      end

      def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
      end

      private

      def user_params
        params.require(:user).permit(:name, :location, :password)
      end



end
