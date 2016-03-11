class GreeterController < ApplicationController
  def hello
    random_names = ["Alex", "Joe", "Michael"]
    # Variable starting with '@' is instance variable.
    # For every request, instance variable is newly generated.
    @name = random_names.sample
    @time = Time.now
    @times_displayed ||= 0
    @times_displayed += 1
  end

  def goodbye
  end
end
