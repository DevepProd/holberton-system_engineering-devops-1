#!/usr/bin/env ruby
#This script is to find the repetitiones token about a strin
#Matches any single character (except newlines, normally)
puts ARGV[0].scan(/^h.{1}n$/).join
