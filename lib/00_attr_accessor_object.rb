class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |insta_var_sym|
      getter_sym = ("@" + insta_var_sym.to_s).to_sym
      setter_sym = (insta_var_sym.to_s + "=").to_sym
      
      define_method(insta_var_sym) { instance_variable_get(getter_sym) }
      define_method(setter_sym) { |val| instance_variable_set(getter_sym, val) }
      
    end
  end
  
  # def self.my_attr_accessor(*names)
  #   names.each do |inst_var_name|
  #     define_method(inst_var_name) { instance_variable_get("@#{inst_var_name}") }
  #     define_method("#{inst_var_name}=") { |val| instance_variable_set("@#{inst_var_name}", val) }
  #   end
  # end
  
end