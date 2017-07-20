require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Book')

# puts 'Address Book created'
# puts 'Entry created'
# Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
# Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
# Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )
# Entry.create(address_book_id: book.id, name: "Bill", phone_number: '444-444-4444', email: "bill@gmail.com")
# all_the_updates = { 1 => { "name" => "Dave", "email" => "david@bloc.com", "phone_number" => "111-111-1111" }, 2 => { "name" => "Jeremy", "email" => "jeremy@bloc.com", "phone_number" => "222-222-2222" }, 3 => { "name" => "Juan", "email" => "juan@bloc.com", "phone_number" => "333-333-3333" } }
#
# Entry.update(all_the_updates.keys, all_the_updates.values)

# Entry.destroy_all(["phone_number = ?", '111-111-1111'])


Entry.where(name: "Juan").destroy_all

puts Entry.all
