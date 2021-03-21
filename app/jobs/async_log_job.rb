class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(message: "hello")
    AsyncLog.create!(message: message)
  end

  discard_on StandardError do |job, error|
    SomeNotifier.push(error)
  end
end
