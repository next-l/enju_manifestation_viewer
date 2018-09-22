module EnjuManifestationViewer
  module ManifestationViewerHelper
    def google_book_search_preview(isbn)
      render :partial => 'manifestations/google_book_search', :locals => {:isbn => isbn}
    end

    def embed_content(manifestation)
      case
      when manifestation.youtube_id
        render :partial => 'manifestations/youtube', :locals => {:manifestation => manifestation}
      when manifestation.nicovideo_id
        render :partial => 'manifestations/nicovideo', :locals => {:manifestation => manifestation}
      when manifestation.flickr.present?
        render :partial => 'manifestations/flickr', :locals => {:manifestation => manifestation}
      when manifestation.respond_to?(:ipaper_id)
        render :partial => 'manifestations/scribd', :locals => {:manifestation => manifestation}
      end
    end
  end
end
