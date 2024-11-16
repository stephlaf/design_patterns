# frozen_string_litteral: true

class Singleton
  @unique_instance = new

  def self.get_instance
    @unique_instance
  end

  def self.unique_instance
    @unique_instance
  end

  private

  def self.new
    # p 'prout'
  end
end

p instance1 = Singleton.get_instance
p instance2 = Singleton.get_instance
# p instance = Singleton.new
# pp Singleton.unique_instance
