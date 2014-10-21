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

end
