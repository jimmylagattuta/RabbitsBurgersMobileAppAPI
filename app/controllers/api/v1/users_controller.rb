class Api::V1::UsersController < ApplicationController
	def new
		puts "*" * 100
		first_name = params['firstName']
		last_name = params['lastName']
		email = params['emailSignup']
		password = params['passwordSignup']
		password_confirmation = params['passwordSignupConfirmation']
		secretQuestion = params['secretQuestion']
		secretAnswer = params['secretAnswer']
		customer = User.new(
			email: email,
			password: password,
			password_confirmation: password_confirmation,
			secret_question: secretQuestion,
			secret_answer: secretAnswer,
			admin: false,
			super_admin: false,
			employee: false
		)
		customer.save
		if customer.save
			message = {
				content: customer
			}
		else
			puts "error"
			puts customer.errors.full_messages
			message = {
				content: 'Failed'
			}
		end
		render json: message
		puts "*" * 100		
	end

	def create
	end
end
