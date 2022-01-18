class TimerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :span, :description, :datetime, :reviews
end
