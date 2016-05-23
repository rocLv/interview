class AddRefereceToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :commentable,
        polymorphic: true, index: true
  end
end
