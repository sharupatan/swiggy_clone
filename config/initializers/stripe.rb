@spk = 'pk_test_51NgVguSDcHp9li1clXvsHGRANqudV4Xl2AdqXWHIrlGYcLglqYeQVId7cgkBL7GE4abXwdpKIknMs7wP8ppESYcM00FWtV0tut'
@ssk = 'sk_test_51NgVguSDcHp9li1chY2T8DYjrRlcYmmMV7JxoRwGeBPpHWj6qu2Q0WIGjQ4kZWTMHSz2A8jlGubIJ74C8jNS56hG00J4he4oRv'

Rails.configuration.stripe = { 
  :publishable_key => @spk,
  :secret_key => @ssk
} 
Stripe.api_key = Rails.configuration.stripe[:secret_key]