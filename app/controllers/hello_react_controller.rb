class HelloReactController < ApplicationController
  def index
    render component: 'HelloWorld', props: { greeting: "Hello from react-rails." }, tag: 'span'
  end
end