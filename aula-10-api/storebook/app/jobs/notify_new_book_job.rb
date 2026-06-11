class NotifyNewBookJob < ApplicationJob
  queue_as :default
  discard_on ActiveRecord::RecordNotFound

  def perform(book_id)
    book = Book.find(book_id)
    return if book.notified_at.present?
    
    sleep 3
    Rails.logger.info "Notificação: livro '#{book.title}' foi criado!"
    book.update!(notified_at: Time.current)

  end
end
