class SurveysChannel < BaseChannel
  def subscribed
    stream_from "surveys"
  end
end
