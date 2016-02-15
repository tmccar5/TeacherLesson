class AddAttachmentChartToLessons < ActiveRecord::Migration
  def self.up
    change_table :lessons do |t|
      t.attachment :chart
    end
  end

  def self.down
    remove_attachment :lessons, :chart
  end
end
