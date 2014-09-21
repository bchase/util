module Util
  module String
    module JapaneseHelpers
      KANJI_RANGES = [
        0x3400..0x9FFF,
        0x20000..0x2A6DF,
        0xF900..0xFAFF,
        0x2F800..0x2FA1F 
      ]

      def utf_to_i
        must_be_single_character!

        self.unpack("U").first
      end

      def kanji?
        must_be_single_character!

        KANJI_RANGES.any? { |range|
          range.include? self.utf_to_i
        }
      end

      def has_kanji?
        self.chars.any? { |char| char.kanji? }
      end

      def all_kanji?
        self.chars.all? { |char| char.kanji? }
      end

    private

      def must_be_single_character!
        raise "Must be called on single character string" unless self.size == 1
      end
    end
  end
end
