# frozen_string_literal: true

require_relative 'calculator/version'

# This is a calculator gem
module Calculator
    # This is the basic class for the calculator
    class Basic
        # This method adds two numbers

        def self.add(num1, num2)
            raise 'Invalid argument' if validate_numbers(num1, num2)

            num1 + num2
        rescue StandardError
            nil
        end

        # This method subtracts two numbers
        def self.subtract(num1, num2)
            raise 'Invalid argument' if validate_numbers(num1, num2)

            num1 - num2
        rescue StandardError
            nil
        end

        # This method multiplies two numbers
        def self.multiply(num1, num2)
            raise 'Invalid argument' if validate_numbers(num1, num2)

            num1 * num2
        rescue StandardError
            nil
        end

        # This method divides two numbers
        def self.divide(num1, num2)
            raise 'Invalid argument' if validate_numbers(num1, num2)
            raise 'Cannot divide by zero' if num2.zero?

            num1 / num2
        rescue StandardError
            nil
        end

        private_class_method def self.validate_numbers(num1, num2)
            num1.is_a?(String) or num2.is_a?(String)
        end
    end
end
