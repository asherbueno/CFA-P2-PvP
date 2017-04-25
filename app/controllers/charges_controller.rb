class ChargesController < ApplicationController

  def create
  @post = Post.find(params[:id])
  @amount = @post.price * 100

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => "#{@post.name}",
    :currency    => 'aud'
  )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


end
