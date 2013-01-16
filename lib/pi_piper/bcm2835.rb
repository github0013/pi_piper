require 'ffi'

module PiPiper
  module Bcm2835
    extend FFI::Library
    ffi_lib '/usr/local/lib/libbcm2835.so'

    attach_function :spi_begin,       :bcm2835_spi_begin,            [], :uint8
    attach_function :spi_end,         :bcm2835_spi_end,              [], :uint8
    attach_function :spi_transfer,    :bcm2835_spi_transfer,       [:uint8], :uint8
    attach_function :spi_clock,       :bcm2835_spi_setClockDivider,  [:uint8], :void
    attach_function :spi_bit_order,   :bcm2835_spi_setBitOrder,      [:uint8], :void
    attach_function :spi_chip_select, :bcm2835_spi_chipSelect,       [:uint8], :void
    attach_function :spi_chip_select_polarity, 
                    :bcm2835_spi_setChipSelectPolarity,              [:uint8, :uint8], :void

  end
end
