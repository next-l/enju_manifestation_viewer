module EnjuManifestationViewer
  module BookJacketHelper
    def book_jacket(manifestation)
      if manifestation.picture_files.exists?
        link = ''
        manifestation.picture_files.each_with_index do |picture_file, i|
          if i == 0
            link += link_to(show_image(picture_file, :size => :thumb), picture_file_path(picture_file, :format => :download), :rel => "manifestation_#{manifestation.id}")
          else
            link += content_tag :span, :style => "display: none" do
              link_to(show_image(picture_file, :size => :thumb), picture_file_path(picture_file, :format => :download), :rel => "manifestation_#{manifestation.id}")
            end
          end
        end
        return link.html_safe
      else
        link = book_jacket_tag(manifestation)
        unless link
          link = screenshot_tag(manifestation)
        end
      end

      unless link
        link = link_to image_tag('unknown_resource.png', :width => '100', :height => '100', :alt => '*', :itemprop => 'image'), manifestation
      end
      link
    end

    def screenshot_tag(manifestation, generator = ENV['ENJU_SCREENSHOT_GENERATOR'])
      return nil unless manifestation.try(:access_address)
      case generator
      when "mozshot"
        link_to image_tag("http://mozshot.nemui.org/shot?#{manifestation.access_address}", :width => 128, :height => 128, :alt => manifestation.original_title, :border => 0, :itemprop => 'image'), manifestation.access_address
      when "simpleapi"
        link_to image_tag("http://img.simpleapi.net/small/#{manifestation.access_address}", :width => 128, :height => 128, :alt => manifestation.original_title, :border => 0, :itemprop => 'image'), manifestation.access_address
      when "heartrails"
        link_to image_tag("http://capture.heartrails.com/medium?#{manifestation.access_address}", :width => 120, :height => 90, :alt => manifestation.original_title, :border => 0, :itemprop => 'image'), manifestation.access_address
      when "thumbalizr"
        link_to image_tag("http://api.thumbalizr.com/?url=#{manifestation.access_address}&width=128", :width => 128, :height => 144, :alt => manifestation.original_title, :border => 0, :itemprop => 'image'), manifestation.access_address
      end
    end

    def book_jacket_tag(manifestation, generator = ENV['ENJU_BOOK_JACKET_SOURCE'])
      return nil unless manifestation
      case generator
      when "amazon"
        return nil unless ENV['ENJU_AMAZON_HOSTNAME']
        book_jacket = manifestation.amazon_book_jacket
        if book_jacket
          link_to image_tag(book_jacket[:url], :width => book_jacket[:width], :height => book_jacket[:height], :alt => manifestation.original_title, :class => 'book_jacket', :itemprop => 'image'), "http://#{ENV['ENJU_AMAZON_HOSTNAME']}/dp/#{book_jacket[:asin]}"
        end
      when "google"
        render :partial => 'manifestations/google_book_thumbnail', :locals => {:manifestation => manifestation}
      end
    end

    def amazon_link(asin, hostname = ENV['ENJU_AMAZON_HOSTNAME'])
      return nil if asin.blank?
      "http://#{hostname}/dp/#{asin}"
    end

    def book_jacket_source_link
      case ENV['ENJU_BOOK_JACKET_SOURCE']
      when "google"
        link_to "Google Books", "http://books.google.com/"
      when "amazon"
        link_to "Amazon Web Services", "http://aws.amazon.com/"
      end
    end

    def book_jacket_header(source)
      string = ''
      case source
      when :google
        string << javascript_tag(nil, :src => "https://www.google.com/jsapi")
        string << render('manifestations/google_book_thumbnail_header')
      end
      string.html_safe
    end

    def screenshot_generator_link
      case ENV['ENJU_SCREENSHOT_GENERATOR']
      when :mozshot
        link_to "MozShot", "http://mozshot.nemui.org/"
      when :simpleapi
        link_to "SimpleAPI", "http://img.simpleapi.net/"
      when :heartrails
        link_to "HeartRails Capture", "http://capture.heartrails.com/"
      when :thumbalizr
        link_to "thumbalizr", "http://www.thumbalizr.com/"
      end
    end
  end
end
