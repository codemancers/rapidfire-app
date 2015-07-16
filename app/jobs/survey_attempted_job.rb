class SurveyAttemptedJob < ActiveJob::Base
  def perform(record)
    broadcast_params = {
      survey_id: record.id,
      action: :attempted
    }

    ActionCable.server.broadcast("surveys", broadcast_params)
  end
end
