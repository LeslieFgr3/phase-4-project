class SchedulerSerializer < ActiveModel::Serializer
  attributes :id, :task_id, :user_id
end
