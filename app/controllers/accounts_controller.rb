class AccountsController < ApplicationController
	def register
		@accounts = Account.new
	end

	def createaccount
	    @accounts = Account.new()
	    @accounts.name = params[:account][:name]
	    @accounts.email = params[:account][:email]
	    @accounts.age = params[:account][:age]
	    @accounts.department = params[:account][:department]
	    @accounts.college = params[:account][:college]
	    @accounts.password = params[:account][:password]
	    @accounts.repassword = params[:account][:repassword]
	    @accounts.save
	    redirect_to "/accounts/#{@accounts.id}"
	end

	def profile
		@accounts = Account.find(params[:id])
	end
end
