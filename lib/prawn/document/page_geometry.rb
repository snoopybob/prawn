# page_geometry.rb : Describes PDF page geometries
#
# Copyright April 2008, Gregory Brown.  All Rights Reserved.
#
# This is free software. Please see the LICENSE and COPYING files for details.

module Prawn
  class Document
    module PageGeometry
          
      # Dimensions pulled from PDF::Writer, rubyforge.org/projects/ruby-pdf
      SIZES = { "4A0" => [4767.87, 6740.79], 
                "2A0" => [3370.39, 4767.87], 
                 "A0" => [2383.94, 3370.39], 
                 "A1" => [1683.78, 2383.94], 
                 "A2" => [1190.55, 1683.78], 
                 "A3" => [841.89, 1190.55], 
                 "A4" => [595.28, 841.89], 
                 "A5" => [419.53, 595.28], 
                 "A6" => [297.64, 419.53], 
                 "A7" => [209.76, 297.64], 
                 "A8" => [147.40, 209.76], 
                 "A9" => [104.88, 147.40], 
                "A10" => [73.70, 104.88], 
                 "B0" => [2834.65, 4008.19], 
                 "B1" => [2004.09, 2834.65], 
                 "B2" => [1417.32, 2004.09], 
                 "B3" => [1000.63, 1417.32], 
                 "B4" => [708.66, 1000.63], 
                 "B5" => [498.90, 708.66], 
                 "B6" => [354.33, 498.90], 
                 "B7" => [249.45, 354.33], 
                 "B8" => [175.75, 249.45], 
                 "B9" => [124.72, 175.75], 
                "B10" => [87.87, 124.72], 
                 "C0" => [2599.37, 3676.54], 
                 "C1" => [1836.85, 2599.37], 
                 "C2" => [1298.27, 1836.85], 
                 "C3" => [918.43, 1298.27], 
                 "C4" => [649.13, 918.43], 
                 "C5" => [459.21, 649.13], 
                 "C6" => [323.15, 459.21], 
                 "C7" => [229.61, 323.15], 
                 "C8" => [161.57, 229.61], 
                 "C9" => [113.39, 161.57], 
                "C10" => [79.37, 113.39], 
                "RA0" => [2437.80, 3458.27], 
                "RA1" => [1729.13, 2437.80], 
                "RA2" => [1218.90, 1729.13], 
                "RA3" => [864.57, 1218.90], 
                "RA4" => [609.45, 864.57], 
               "SRA0" => [2551.18, 3628.35], 
               "SRA1" => [1814.17, 2551.18], 
               "SRA2" => [1275.59, 1814.17], 
               "SRA3" => [907.09, 1275.59], 
               "SRA4" => [637.80, 907.09], 
             "LETTER" => [612.00, 792.00], 
              "LEGAL" => [612.00, 1008.00], 
              "FOLIO" => [612.00, 936.00], 
          "EXECUTIVE" => [521.86, 756.00] }
     
      def page_dimensions #:nodoc:
        coords = SIZES[page_size]  
        [0,0] + case(page_layout)   
        when :portrait
          coords
        when :landscape
          coords.reverse 
        else 
          raise Prawn::Errors::InvalidPageLayout, 
            "Layout must be either :portrait or :landscape"
        end
      end 
    end     
  end
end
