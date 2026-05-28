class ExampleController < ApplicationController
  before_action :start_time, only: [ :time_sensitive_action ]
  after_action :stop_time, only: [ :time_sensitive_action ]


  def time_sensitive_action
    sleep(2)
    render plain: "Ação concluída"
  end

  private

  def start_time
    @start_time = Time.now
    puts "Tempo de ínicio: #{@start_time} segundos"
  end


  def stop_time
    @end_time = Time.now
    puts "Tempo final: #{@end_time} segundos"
    elapsed_time = @end_time - @start_time
  end
end
