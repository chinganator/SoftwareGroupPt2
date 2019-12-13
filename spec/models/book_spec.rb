require 'rails_helper'

RSpec.describe Book, type: :model do

before (:each) do
    @book = Book.create!(title: "test", author: "author", genre: "test", description: "Test", user_id: "1")
end 

context 'create' do
    it 'create book' do
        expect(Book.all.count).to eq(1)
        end 
    end 
it "search book" do
  get :q
end 

end
