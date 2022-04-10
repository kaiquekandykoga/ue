class Ue
  attr_reader :request, :response

  def initialize(&block)
    @block = block
  end

  def call(env)
    @request = Rack::Request.new(env)
    @response = Rack::Response.new
    @matched = false
    instance_eval(&@block)
    @response.status = 404 unless @matched
    @response.finish
  end

  Rack::MethodOverride::HTTP_METHODS.each do |method|
    method = method.downcase
    define_method method do |*args, &block|
      return unless request.send("#{method}?")
      handle_request(args, &block)
    end
  end

  private

  def handle_request(args)
    return if "/#{args[0]}" != request.path_info
    @matched = true
    return yield if block_given?
  end
end
