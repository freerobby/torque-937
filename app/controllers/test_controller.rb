class TestController < ApplicationController
  def foo
    session[:s1] = "v1"
    cookies["foo1"] = {:value => "bar1", :expires => 2.hours.from_now}
    cookies["foo2"] = {:value => "bar2", :domain => ".spreadaholic.com"}
    cookies["foo3"] = "bar3"
    cookies["foo4"] = "bar4"
    session[:s2] = "v2"
    render :text => "Check your headers"
  end
end
