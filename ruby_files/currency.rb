require 'eu_central_bank'
bank = EuCentralBank.new
bank.update_rates

rate = bank.exchange(100, "USD", "KRW") # 100센트를 원화로 바꾸어라

puts rate