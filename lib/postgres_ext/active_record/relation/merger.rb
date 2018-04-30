module ActiveRecord
  class Relation
    class Merger # :nodoc:
      # This suppresses the "method redefined" warning; the self-alias
      alias normal_values normal_values

      def normal_values
        NORMAL_VALUES + [:with]
      end
    end
  end
end
