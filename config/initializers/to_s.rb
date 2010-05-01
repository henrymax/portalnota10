class Object
  def try_to_s(*args)
    args.each {|method| return send(method) if respond_to? method}
    to_s
  end
end

class ActiveRecord::Base
  def to_label
    try_to_s :nome, :titulo, :name
  end

  # por padrão, exibir o nome da classe  
  def to_s
    self.class.name
  end
end