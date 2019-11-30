#!/usr/bin/env ruby

organization = ENV['MY_GITHUB_ORGANIZATION']
repository   = ENV['MY_GITHUB_REPOSITORY']

puts '@channel'
puts 'お疲れ様です。'
puts '先程、以下のリリースを行いました'
puts ''
puts STDIN.read.split("\n").reject { |str| str =~ /auto-correct/ }.join("\n").gsub(/#(?<pr_id>[0-9]+) /, "https://github.com/#{organization}/#{repository}/pull/\\k<pr_id>\n").gsub(/- \[[x ]\] /, '').gsub(/ @[a-zA-Z0-9.\-_]+/, "\n")
puts ''
puts '以上になります。'
puts 'どうぞよろしくお願いします'
