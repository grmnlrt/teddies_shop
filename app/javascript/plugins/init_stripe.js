import { Stripe } from 'stripe';

const initStripe = () => {
  const paymentButton = document.getElementById('pay');
  paymentButton.addEventListener('click', () => {
    const stripeKey = paymentButton.dataset.stripePublishableKey;
    const checkoutSessionId = paymentButton.dataset.checkoutSessionId;
    Stripe(stripeKey).redirectToCheckout({
      sessionId: checkoutSessionId
    });
  });
}

export { initStripe };
