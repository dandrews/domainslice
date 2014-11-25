class DomainName

  include Mongoid::Document

  field :name,               type: String,  default: ""
  field :tlds,               type: Array,   default: []

  # validates :name,               :presence => true

  # validates_uniqueness_of        :name,
  #                                :case_sensitive => false

  # attr_accessible :name,
  #                 :tlds

  # def initialize(attrs = nil)
  #   @name                 = attrs.fetch('name', name)
  #   @tlds                 = attrs.fetch('tlds', tlds)
  # end

  # class Updater

  #   def self.run
  #   end

  # end

end
