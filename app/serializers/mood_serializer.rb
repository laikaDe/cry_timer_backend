class MoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :datetime, :reviews
end
