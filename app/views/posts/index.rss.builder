xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Code For Tampa Bay News"
    xml.description "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit."
    xml.link posts_url

    @posts.each { |post|
      xml.item do
        xml.title post.title
        xml.description post.body, type: 'html'
        xml.pubDate post.created_at.to_s(:rfc822)
        xml.link post_url post
        xml.guid post_url post
        xml.icon "/favicon.ico"
      end
    }
  end
end