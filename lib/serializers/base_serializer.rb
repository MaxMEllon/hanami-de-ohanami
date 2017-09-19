class BaseSerializer
  def initialize(obj)
    @obj = obj
  end

  def send_json(opt = {})
    result = {}
    p @obj
    @@keys.each do |key|
      value = @obj.send(key)
      result = result.merge({ key => value }) unless value.nil?
    end
    root = opt&.fetch(:root, '')
    root.empty? ? result.to_json : { root => result }.to_json
  end

  def self.attribute(*syms)
    @@keys ||= []
    syms.each do |sym|
      @@keys.push sym
    end
  end
end
