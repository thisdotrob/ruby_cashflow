#!/usr/bin/env ruby

require 'thor'

require './lib/cashflow'

class CLI < Thor
  desc "add TRANSACTION_TYPE", "adds a transaction, TRANSACTION_TYPE is either 'recurring' or 'oneoff'"
  method_option :description, :aliases => "-d", :desc => "The description of the transaction"
  method_option :amount, :aliases => "-a", :desc => "The amount of the transaction"
  method_option :when, :aliases => "-w", :desc => "The date for a one-off transaction, or day of month for a recurring transaction"
  def add(transaction_type)
    description = options[:description]
    amount = options[:amount]
    at = options[:when]
    Cashflow.instance.add(transaction_type:, amount:, when: at, description:)
  end

  desc "rm", "removes a transaction"
  def rm(id)
    puts("#{id}")
  end
end

CLI.start(ARGV)
