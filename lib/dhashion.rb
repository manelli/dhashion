# encoding: utf-8
require 'RMagick'

module Dhashion
  UnableToOpenImage = Class.new(StandardError)

  class Image
    def initialize(file)
      @image = Magick::Image.read(file).first
    rescue
      raise UnableToOpenImage, file
    end

    def fingerprint
      x = @image.quantize(72, Magick::GRAYColorspace, Magick::NoDitherMethod, 8)
                .resize(9, 8, Magick::LagrangeFilter)
                .export_pixels(0, 0, 9, 8, 'I')
               x.map.with_index { |e, i| ((i != 0) && (e > x[i-1])) ? 1 : 0 }
                .join('')
                .to_i(2)
    end
  end

  def self.distance(x, y)
    (x ^ y).to_s(2).count('1')
  end
end
