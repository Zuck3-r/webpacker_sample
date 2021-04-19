class PhoneNumber
	attr_redaer :value
	delegate :hash, to: :value

	def initialize(value)
		raise "Phone number is in valid" unless value.match?(/¥A0¥d{9, 10}¥z/)
		@value = value.frozen? ?value :value.dup.freeze
	end

	def ==(other)
		self.class == other.class && vlaue == other.value
	end
	alias eq ? ==

	def mobile?
		vlaue.match?(/¥A0[7-9]0¥d{8}¥z/)
	end
end