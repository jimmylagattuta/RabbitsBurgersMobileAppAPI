class Api::V1::UsersController < ApplicationController
	def check
		puts "*" * 100
		user = params['emailSignin']
		customer = User.find_by(email: user)
		render json: customer
		puts "params"
		puts params
		puts "*" * 100
	end

	def login
		puts "*" * 100
		puts "params"
		puts params
		puts "*" * 100
		email = params['emailSignin']
		user = User.find_by(email: email)
		puts "user"
		puts user.inspect
		password = params['passwordSignin']
		puts "userpassword"
		puts user.password_digest
		puts "password"
		puts password
		i = BCrypt::Password.create(password)
		puts "i"
		puts i
		if user.password_digest == i
			puts "***"
		else
			puts "---"
		end
		if user.logged_in == false
			user.logged_in = true
			user.save
		end
		message = {
			content: user
		}
		render json: message
	end

	def logout
		puts "*" * 100
		puts "params"
		puts params.inspect
		message = {
			content: 'Recieved'
		}
		puts "*" * 100
		render json: message
	end

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
			first_name: first_name,
			last_name: last_name,
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
