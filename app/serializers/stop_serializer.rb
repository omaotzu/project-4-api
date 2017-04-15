class StopSerializer < ActiveModel::Serializer
  attributes :id, :place, :start_date, :leave_date
end
