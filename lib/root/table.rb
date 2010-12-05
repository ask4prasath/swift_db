module Db
  module Core
    class Table

      attr_accessor :root_node, :first_node

      def initialize(structure=3)
        raise "Your node structure is less than 3 which is not good for BTree" if (structure < 3)
        @structure = structure
        @root_node = Tree.new(@structure)
        @first_node = @root_node
      end

      def insert(key, value)
        @root_node.insert(key, value)
        @root_node = @root_node.parent_node unless @root_node.parent_node.nil?
      end

      def search(key, operator=DB::Core::Common::Comparison::EQ)
          case operator
            when DB::Core::Common::Comparison::NEQ
              @root_node.search(key, DB::Core::Common::Comparison::LT) + @root_node.search(key, DB::Core::Common::Comparison::GT)
            else
              @root_node.search(key, operator)
          end
      end



    end
  end
end