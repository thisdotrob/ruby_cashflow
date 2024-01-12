require 'singleton'

class Cashflow
  include Singleton

  def initialize()
    puts('Cashflow init')
  end

  def add(description:, amount:, when:, transaction_type:)
  end
end
