require 'rspec'

describe 'Prime_factors_calculator' do

  before :each do
    @prime_factors_calculator = PrimeFactorsCalculator.new
    @prime_factors_of_510510 = @prime_factors_calculator.calculate_prime_factors 510510
  end

  describe "#new" do
    it 'should create_an_instance_of_a_prime_factors_calculator' do
      @prime_factors_calculator.should be_an_instance_of PrimeFactorsCalculator
    end

    it 'returns_an_empty_list_when_calculating_prime_factors_of_one' do
      (@prime_factors_calculator.calculate_prime_factors 1).empty?
    end

    it 'returns_a_list_of_prime_factors_of_a_given_number' do
      expect((@prime_factors_calculator.calculate_prime_factors 510510).size).to eq 7
    end

    it 'prime_factors_are_in_ascending_order_in_the_result_list' do
      expect(@prime_factors_of_510510).to eq (@prime_factors_of_510510.sort)
    end
  end

end