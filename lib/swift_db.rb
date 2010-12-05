$:.unshift(File.join(File.dirname(__FILE__),'..','lib'))

#Loads all the core Database Files

#require "/home/prasath/database/Database/lib/root/leaf.rb"

require "root/tree.rb"
require "root/leaf.rb"
require "root/internal_node.rb"
require "root/binary.rb"
require "root/table.rb"
require "common/comparison.rb"
