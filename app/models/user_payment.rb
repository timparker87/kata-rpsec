require './lib/payment'

class UserPayment
  def process
    payment = Payment.new
    result = payment.charge(50)
    result
  end
end
