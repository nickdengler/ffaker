# encoding: utf-8

require 'ffaker/address'

module FFaker
  module AddressRU
    include FFaker::Address

    extend ModuleUtils
    extend self

    POSTAL_CODE_FORMAT = ['######'].freeze
    STREET_NBR_FORMATS = %w(## # ###).freeze

    def city
      CITY.sample
    end

    def province
      PROVINCE.sample
    end

    def zip_code
      FFaker.numerify(POSTAL_CODE_FORMAT)
    end

    def postal_code
      zip_code
    end

    def street_name
      STREET.sample
    end

    def street_address
      "#{street_name}, д. #{street_number}"
    end

    def street_number
      FFaker.numerify(STREET_NBR_FORMATS)
    end
  end
end
