# frozen_string_literal: true

USERNAME = 'deveshmhatre'
PASSWORD = 'password'
PASS_VAULT = { # rubocop:disable Style/MutableConstant
  AWS: {
    username: 'random',
    password: 'password'
  }
}

def welcome
  puts 'Welcome to Pass Man'
end

def prompt_user_name
  puts 'Please sign in to continue...'
  print 'Enter username: '

  gets.chomp
end

def verify_user_name(user_name)
  return unless user_name != USERNAME

  puts 'Invalid username!'
  exit
end

def prompt_user_pass
  print 'Enter password: '

  gets.chomp
end

def verify_user_pass(pass)
  return unless pass != PASSWORD

  puts 'Invalid password!'
  exit
end

def greet_user(user_name)
  puts "\nHello, #{user_name}"
end

def show_menu_options
  puts "\nWhat would you like to do?"
  puts '1. Add new service credentials'
  puts '2. Retrieve an existing service credential'
  puts '3. Exit'
end

def fetch_user_selection
  gets.chomp
end

def handle_user_selection(user_selection)
  case user_selection
  when '1'
    new_service = assign_service_name
    assign_creds_for(new_service)
  when '2'
    req_service_name = fetch_service_name
    display_service_creds_of(req_service_name)
  else
    exit_program
  end
end

def assign_service_name
  print 'Enter the name of the service: '
  new_service = gets.chomp
  PASS_VAULT[new_service.to_sym] = {}

  new_service
end

def assign_creds_for(new_service)
  print 'Please enter username for this service: '
  new_service_username = gets.chomp
  PASS_VAULT[new_service.to_sym][:username] = new_service_username

  print 'Please enter password for this service: '
  new_service_password = gets.chomp
  PASS_VAULT[new_service.to_sym][:password] = new_service_password

  display_service_creds_of(new_service)
end

def fetch_service_name
  print 'Enter the name of the service: '

  gets.chomp
end

def display_service_creds_of(req_service_name)
  creds = PASS_VAULT[req_service_name.to_sym]

  puts "\nHere are the credentials for #{req_service_name}:"

  creds.each do |key, val|
    puts "#{key}: #{val}"
  end
end

def exit_program
  puts 'Exiting...'
  exit
end

welcome
user_name = prompt_user_name
verify_user_name(user_name)
user_pass = prompt_user_pass
verify_user_pass(user_pass)

greet_user(user_name)

loop do
  show_menu_options
  user_selection = fetch_user_selection
  handle_user_selection(user_selection)
end
