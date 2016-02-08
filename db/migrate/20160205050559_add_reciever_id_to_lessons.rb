class AddRecieverIdToLessons < ActiveRecord::Migration
  def change
  	add_column :lessons, :reciever_id, :integer
  end
end
