module StepFallback
  def step(*args)
    if defined?(super)
      super
    else
      When(*args)
    end
  end
end

World(StepFallback)
