class Task < ActiveRecord::Base
  attr_accessible :list_id, :name, :status

  belongs_to :list
end
