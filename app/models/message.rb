class Message < ApplicationRecord
  # after_create_commit {MessageBroadcastJob.perform_later_self}
  after_create_commit { MessageBroadcastJob.perform_later self }
end
