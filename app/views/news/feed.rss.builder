#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Grandprix.com News Feed"
    xml.author "Grandprix.ocm"
    xml.description "The source for Grand Prix news"
    xml.link "https://www.grandprix.com"
    xml.language "en"

    for story in @stories
      xml.item do
        if story.headline
          xml.title story.headline
        else
          xml.title ""
        end
        xml.author "Grandprix.com"
        xml.pubDate story.date_live_at.to_s(:rfc822)
        xml.link "http://www.grandprix.com" + story.filename
        xml.guid story.id

        text = story.abstract
        
        unless story.legacy_photo.nil?
            image_url = story.legacy_photo.display_photo
            image_caption = story.legacy_photo.caption
            image_align = ""
            image_tag = "
                <p><img src='" + image_url +  "' alt='" + image_caption + "' title='" + image_caption + "' align='" + image_align  + "' /></p>
              "
            text = text.sub('{image}', image_tag)
        end
        xml.description "<p>" + text + "</p>"

      end
    end
  end
end