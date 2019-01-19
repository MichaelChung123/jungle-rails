class OrderMailer < ApplicationMailer
    default from: 'notifications@example.com'
    
    def order_mailer(order)
      @order = order
      @url  = 'http://example.com/login'
      mail(to: order.email, subject: 'Order Details')
    end
  end