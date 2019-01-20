class Quote < ApplicationRecord
	def next_id
    next_id = self.class.where('id > ?', self.id).pluck(:id).first
    if !next_id
    	next_id = self.class.order('id').pluck(:id).first
    end
    return next_id
  end

  def previous_id
    prev_id = self.class.where('id < ?', self.id).pluck(:id).last
    if !prev_id
    	prev_id = self.class.order('id').pluck(:id).last
    end
    return prev_id
  end
end
