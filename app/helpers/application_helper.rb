# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def can_vote_on?(battle)
    ! battle.votes.find_by_session_id(request.session_options[:id])
  end

  def google_pie_chart(data, options = {})
    options[:width] ||= 250
    options[:height] ||= 100
    options[:colors] = %w(0DB2AC F5DD7E FC8D4D FC694D FABA32 704948 968144 C08FBC ADD97E)
    dt = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-."
    options[:divisor] ||= 1

    while (data.map { |k,v| v }.max / options[:divisor] >= 4096) do
      options[:divisor] *= 10
    end

    opts = {
      :cht => "p",
      :chd => "e:#{data.map{|k,v|v=v/options[:divisor];dt[v/64..v/64]+dt[v%64..v%64]}}",
      :chl => "#{data.map { |k,v| CGI::escape(k + " (#{v})")}.join('|')}",
      :chs => "#{options[:width]}x#{options[:height]}",
      :chco => options[:colors].slice(0, data.length).join(',')
    }

    image_tag("http://chart.apis.google.com/chart?#{opts.map{|k,v|"#{k}=#{v}"}.join('&')}")
  end


  def result_chart(battle)
    chart = google_pie_chart [ [battle.battle_matchups.left.the_random.to_s, battle.battle_matchups.left.votes.count], [battle.battle_matchups.right.the_random.to_s, battle.battle_matchups.right.votes.count]]

    link_to chart, result_path(battle)
  end
  
end
