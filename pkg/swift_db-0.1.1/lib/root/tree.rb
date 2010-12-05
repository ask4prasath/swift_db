module Db
  module Core
    class Tree

      attr_accessor :datas, :parent_node, :pre_node, :next_node, :structure

      def initialize(structure=3)
        @structure = structure
        @datas = []
        @parent_node = nil
        @pre_node = nil
        @leaf_node = nil
        @next_node = nil
      end

      def keys
        id = []
        @datas.each {|k| id << k[0]}
        id
      end

      def max_key_value
          @datas[-1][0]
        end

      def insert(key, value)
        inserting_element = key
        _datas = [] << inserting_element << value
        @datas << _datas
        sort_keys
        divide if @datas.length > @structure
        @datas
      end

      def search(key, operator=DB::Core::Common::Comparison::EQ)
          match=[]
          case operator
            when DB::Core::Common::Comparison::EQ
              @datas.each do |key_node|
                if key == key_node[0]
                  match << key_node[1]
                  break;
                end
              end
              return match[0]
            when DB::Core::Common::Comparison::GT  ## Find nodes that are greater than key
              @datas.each do |key_node|
                if key_node[0] > key
                  match << key_node[1]
                end
              end if max_key_value > key
              match += next_node.search(key, operator) unless next_node.nil?
              return match
            when DB::Core::Common::Comparison::GTE
              @datas.each do |key_node|
                if key_node[0] >= key
                  match << key_node[1]
                end
              end if max_key_value >= key
              match += next_node.search(key, operator) unless next_node.nil?
              return match
            when DB::Core::Common::Comparison::LT
              @datas.each do |key_node|
                if key_node[0] < key
                  match << key_node[1]
                end
              end
              pre_match = []
              pre_match = pre_node.search(key, operator) unless pre_node.nil?
              match = pre_match + match
              return match
            when DB::Core::Common::Comparison::LTE
              @datas.each do |key_node|
                if key_node[0] <= key
                  match << key_node[1]
                end
              end
              pre_match = []
              pre_match = pre_node.search(key, operator) unless pre_node.nil?
              match = pre_match + match
              return match
          end
        end


    private
      def sort_keys
        self.datas.sort!
      end

      def divide
          no_of_divides = ((@datas.length/@structure).ceil) - 1
          leaf_items = @datas.values_at(0..no_of_divides)
          @datas.slice!(0..no_of_divides)


          new_node = Tree.new()
          new_node.datas = leaf_items
          new_node.pre_node = @pre_node
          new_node.next_node = self
          new_node.pre_node.next_node = new_node unless new_node.pre_node.nil?
          @pre_node = new_node
          @parent_node = InternalNode.new(@structure, self) if @parent_node.nil?
          @pre_node.parent_node=@parent_node
          @parent_node.insert_node_pointer([@pre_node.max_key_value, @pre_node]) unless @parent_node.nil?

      end
    end
  end
end



#require "/home/prasath/database/Database/lib/db.rb"
#a= Db::Core::Tree.new
