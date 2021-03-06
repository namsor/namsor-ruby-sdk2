=begin
#NamSor API v2

#NamSor API v2 : enpoints to process personal names (gender, cultural origin or ethnicity) in all alphabets or languages. Use GET methods for small tests, but prefer POST methods for higher throughput (batch processing of up to 1000 names at a time). Need something you can't find here? We have many more features coming soon. Let us know, we'll do our best to add it! 

OpenAPI spec version: 2.0.2-beta
Contact: contact@namsor.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'date'

module NamSorClient
  # Represents the output of inferring the LIKELY country and phone code from a personal name and phone number.
  class FirstLastNamePhoneCodedOut
    attr_accessor :id

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :international_phone_number_verified

    attr_accessor :phone_country_iso2_verified

    attr_accessor :phone_country_code

    attr_accessor :phone_country_code_alt

    attr_accessor :phone_country_iso2

    attr_accessor :phone_country_iso2_alt

    attr_accessor :origin_country_iso2

    attr_accessor :origin_country_iso2_alt

    attr_accessor :phone_number

    attr_accessor :verified

    attr_accessor :score

    attr_accessor :country_iso2

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'international_phone_number_verified' => :'internationalPhoneNumberVerified',
        :'phone_country_iso2_verified' => :'phoneCountryIso2Verified',
        :'phone_country_code' => :'phoneCountryCode',
        :'phone_country_code_alt' => :'phoneCountryCodeAlt',
        :'phone_country_iso2' => :'phoneCountryIso2',
        :'phone_country_iso2_alt' => :'phoneCountryIso2Alt',
        :'origin_country_iso2' => :'originCountryIso2',
        :'origin_country_iso2_alt' => :'originCountryIso2Alt',
        :'phone_number' => :'phoneNumber',
        :'verified' => :'verified',
        :'score' => :'score',
        :'country_iso2' => :'countryIso2'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'international_phone_number_verified' => :'String',
        :'phone_country_iso2_verified' => :'String',
        :'phone_country_code' => :'Integer',
        :'phone_country_code_alt' => :'Integer',
        :'phone_country_iso2' => :'String',
        :'phone_country_iso2_alt' => :'String',
        :'origin_country_iso2' => :'String',
        :'origin_country_iso2_alt' => :'String',
        :'phone_number' => :'String',
        :'verified' => :'BOOLEAN',
        :'score' => :'Float',
        :'country_iso2' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NamSorClient::FirstLastNamePhoneCodedOut` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NamSorClient::FirstLastNamePhoneCodedOut`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'international_phone_number_verified')
        self.international_phone_number_verified = attributes[:'international_phone_number_verified']
      end

      if attributes.key?(:'phone_country_iso2_verified')
        self.phone_country_iso2_verified = attributes[:'phone_country_iso2_verified']
      end

      if attributes.key?(:'phone_country_code')
        self.phone_country_code = attributes[:'phone_country_code']
      end

      if attributes.key?(:'phone_country_code_alt')
        self.phone_country_code_alt = attributes[:'phone_country_code_alt']
      end

      if attributes.key?(:'phone_country_iso2')
        self.phone_country_iso2 = attributes[:'phone_country_iso2']
      end

      if attributes.key?(:'phone_country_iso2_alt')
        self.phone_country_iso2_alt = attributes[:'phone_country_iso2_alt']
      end

      if attributes.key?(:'origin_country_iso2')
        self.origin_country_iso2 = attributes[:'origin_country_iso2']
      end

      if attributes.key?(:'origin_country_iso2_alt')
        self.origin_country_iso2_alt = attributes[:'origin_country_iso2_alt']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'verified')
        self.verified = attributes[:'verified']
      end

      if attributes.key?(:'score')
        self.score = attributes[:'score']
      end

      if attributes.key?(:'country_iso2')
        self.country_iso2 = attributes[:'country_iso2']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          international_phone_number_verified == o.international_phone_number_verified &&
          phone_country_iso2_verified == o.phone_country_iso2_verified &&
          phone_country_code == o.phone_country_code &&
          phone_country_code_alt == o.phone_country_code_alt &&
          phone_country_iso2 == o.phone_country_iso2 &&
          phone_country_iso2_alt == o.phone_country_iso2_alt &&
          origin_country_iso2 == o.origin_country_iso2 &&
          origin_country_iso2_alt == o.origin_country_iso2_alt &&
          phone_number == o.phone_number &&
          verified == o.verified &&
          score == o.score &&
          country_iso2 == o.country_iso2
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, first_name, last_name, international_phone_number_verified, phone_country_iso2_verified, phone_country_code, phone_country_code_alt, phone_country_iso2, phone_country_iso2_alt, origin_country_iso2, origin_country_iso2_alt, phone_number, verified, score, country_iso2].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        NamSorClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
