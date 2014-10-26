class Domain

  include Mongoid::Document

  field :word,               type: String,  default: ""
  field :com,                type: Boolean, default: false
  field :net,                type: Boolean, default: false
  field :org,                type: Boolean, default: false
  field :co,                 type: Boolean, default: false
  field :info,               type: Boolean, default: false
  field :biz,                type: Boolean, default: false
  field :mobi,               type: Boolean, default: false

  def tlds
    ['com', 'net', 'org', 'co', 'info', 'biz', 'mobi']
  end

  def self.new_tlds
    a = []
    File.open('new_tlds.txt') do |f|
      f.each_line do |line|
        a << line.strip
      end
    end
    # a.sample(10)
    return a
  end

  def self.matching_tlds terms
    self.new_tlds.select { |word| terms.end_with?(word) }
  end

end
