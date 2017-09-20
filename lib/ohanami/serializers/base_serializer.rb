# frozen_string_literal: true

class BaseSerializer
  def initialize(obj)
    @obj = obj
  end

  def send_json(opt = {})
    result = {}
    @@keys.each do |key|
      begin
        value = send(key)
      rescue
        value = @obj.send(key)
      end
      result = result.merge(key => value) unless value.nil?
    end
    root = opt&.fetch(:root, '')
    root.empty? ? result.to_json : { root => result }.to_json
  end

  protected

  def object
    @obj
  end

  def self.attribute(*syms)
    @@keys ||= []
    syms.each do |sym|
      @@keys.push sym
    end
  end
end
