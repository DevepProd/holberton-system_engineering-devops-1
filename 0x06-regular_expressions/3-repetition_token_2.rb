#!/usr/bin/env ruby
#This script is to find the repetitiones token about a strin
#The plus sign + indicates that the preceding character must appear at least once. 
#For example, "ho + la" describes the infinite set hello, hello, hooola, hoooola, and so on.
puts ARGV[0].scan(/^hbt+n$/).join
