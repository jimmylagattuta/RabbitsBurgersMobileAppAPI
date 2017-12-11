class Api::V1::SessionsController < ApplicationController
	def check
		puts "*" * 100
		x = session[:id]
		if x
			message = {
				content: x
			}
		else
			message = {
				content: 'No User'
			}
		end
		render json: message
		puts "*" * 100
	end

	def new
		puts "*" * 100
		puts "params"
		puts params.inspect
		email = params['emailSignin']
		puts "email"
		puts email
		pass = params['passwordSignin']
		puts "pass"
		puts pass
		users = User.all
		theuser = users.find_by(email: email)
		puts theuser.inspect
		puts "theuser password"
		puts theuser.password_digest.inspect
		puts "pass"
		puts pass
		if theuser.password_digest == pass
			puts "PASS!"
		end
		puts "theuser"
		puts theuser
		puts "user"
		# if user.password == pass   
			puts "user!" 
			# session[:id] = user.id
			message = {
				content: users
			}
		# else
		# 	puts "wrong email or password"
		# 	message = {
		# 		content: 'wrong email or password'
		# 	}
		# end
		puts "session id"
		puts session[:id]
		render json: message
		puts "*" * 100		
	end

	def create
	end
end
