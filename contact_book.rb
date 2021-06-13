class Person
  attr_accessor :name, :phone_num, :email

  def initialize(name, phone_num, email)
    @name = name
    @phone_num = phone_num
    @email = email
  end
end

contact = []
contact.push Person.new('Joseph', '016-888 0952', 'joseph@example.com')
contact.push Person.new('Fredrick', '016-238 0909', 'fredrick@example.com')
contact.push Person.new('Sanderson', '016-663 0343 ', 'sanderson@example.com')
contact.push Person.new('Martin', '019-388 2182 ', 'martin@example.com')
contact.push Person.new('Ernest', '012-501 5721 ', 'ernest@example.com')

contact.each do |contacts|
  puts "-" * 40
  puts "Name: #{contacts.name}"
  puts "Phone Number: #{contacts.phone_num}"
  puts "Email Address: #{contacts.email}"
  puts "=" * 40
end
