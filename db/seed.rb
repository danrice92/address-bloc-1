require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Book')

# puts 'Address Book created'
# puts 'Entry created'
# Entry.create(address_book_id: book.id, name: 'David', phone_number: '999-999-9999', email: 'david@bloc.com' )
# Entry.create(address_book_id: book.id, name: 'Jeremy', phone_number: '111-111-1111', email: 'jeremy@bloc.com' )
# Entry.create(address_book_id: book.id, name: 'Juan', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )
# Entry.create(address_book_id: book.id, name: "Bill", phone_number: '444-444-4444', email: "bill@gmail.com" )
# Entry.create(address_book_id: book.id, name: "David", phone_number: '333-333-3333', email: "david@gmail.com")

# Entry.destroy_all(["phone_number = ?", '111-111-1111'])

all_fellows = Entry.all

puts all_fellows.not(name: "David")

# puts Entry.all
