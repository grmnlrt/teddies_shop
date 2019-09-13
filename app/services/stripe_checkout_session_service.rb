class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    binding.pry
    order.update(state: 'paid')
  end
end
