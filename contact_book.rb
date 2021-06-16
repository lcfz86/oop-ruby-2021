# Example 2
class Person
  attr_accessor :name, :phone_num, :email

  def initialize(name, phone_num, email)
    @name = name
    @phone_num = phone_num
    @email = email
  end

  # Example 3
  def contact_card
    name = "Name: #{@name}\n"
    phone_num = "Phone Number: #{@phone_num}\n"
    email = "Email Address: #{@email}\n"
    line = '=' * 40
    name.concat(phone_num, email, line)
  end
end

# Example 4
class ContactBook
  def initialize(name)
    @name = name
    @contacts = []
  end

  def total_contacts
    @contacts.length
  end

  def add_contact(name, phone_num, email)
    person = Person.new(name, phone_num, email)
    @contacts.push person
  end

  def view_all_contacts
    contact_book_name = "Contact Book Name: #{@name}" + "\n"
    contacts_count = "Contacts Count: #{total_contacts}" + "\n"
    line = '=' * 40 + "\n"
    all_contacts = contact_book_name.concat(contacts_count, line)
    @contacts.each do |contact|
      all_contacts.concat(contact.contact_card, + "\n")
    end
    all_contacts
  end
end

# Example 5
work = ContactBook.new('work')
family = ContactBook.new('family')
friends = ContactBook.new('friends')

work.add_contact('Joseph', '016-888 0952', 'joseph@example.com')
work.add_contact('Fredrick', '016-238 0909', 'fredrick@example.com')
work.add_contact('Anderson', '016-663 0343 ', 'Anderson@example.com')
work.add_contact('Martin', '019-388 2182 ', 'martin@example.com')
work.add_contact('Ernest', '012-501 5721 ', 'ernest@example.com')

family.add_contact('Joseph', '016-888 0952', 'joseph@example.com')
family.add_contact('Fredrick', '016-238 0909', 'fredrick@example.com')
family.add_contact('Anderson', '016-663 0343 ', 'Anderson@example.com')
family.add_contact('Martin', '019-388 2182 ', 'martin@example.com')
family.add_contact('Ernest', '012-501 5721 ', 'ernest@example.com')

friends.add_contact('Joseph', '016-888 0952', 'joseph@example.com')
friends.add_contact('Fredrick', '016-238 0909', 'fredrick@example.com')
friends.add_contact('Anderson', '016-663 0343 ', 'Anderson@example.com')
friends.add_contact('Martin', '019-388 2182 ', 'martin@example.com')
friends.add_contact('Ernest', '012-501 5721 ', 'ernest@example.com')

contact_books = [work, family, friends]

contact_books.each do |books|
  puts books.view_all_contacts
end
# Test - Example 4
# ================
# book = ContactBook.new 'Family'
# book.add_contact('Joseph', '016-888 0952', 'joseph@example.com')
# book.add_contact('Fredrick', '016-238 0909', 'fredrick@example.com')
# book.add_contact('Anderson', '016-663 0343 ', 'Anderson@example.com')
# puts book.view_all_contacts

# Test - Example 2
# ================
#contact = []
#contact.push Person.new('Joseph', '016-888 0952', 'joseph@example.com')
#contact.push Person.new('Fredrick', '016-238 0909', 'fredrick@example.com')
#contact.push Person.new('Anderson', '016-663 0343 ', 'Anderson@example.com')
#contact.push Person.new('Martin', '019-388 2182 ', 'martin@example.com')
#contact.push Person.new('Ernest', '012-501 5721 ', 'ernest@example.com')

#contact.each do |contacts|
#  puts "-" * 40
#  puts "Name: #{contacts.name}"
#  puts "Phone Number: #{contacts.phone_num}"
#  puts "Email Address: #{contacts.email}"
#  puts "=" * 40
#end
