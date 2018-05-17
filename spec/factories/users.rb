FactoryGirl.define do 
	sequence :email do |n|
		"test#{n}@test.com"
	end

	factory :user do
		first_name 'Jon'
		last_name 'Snow'
		email { generate :email }
		password 'asdfasdf'
		password_confirmation 'asdfasdf'
		phone '6399089855'
	end

	factory :admin_user, class: "AdminUser" do
		first_name 'Admin'
		last_name 'User'
		email {generate :email}
		password 'asdfasdf'
		password_confirmation 'asdfasdf'
		phone '5554447689'
	end

	factory :non_authorized_user, class: "User" do
		first_name 'Non'
		last_name 'Authorized'
		email {generate :email}
		password 'asdfasdf'
		password_confirmation 'asdfasdf'
		phone '3456668790'
	end
end

