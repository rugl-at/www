require "storyblok"

module Jekyll

  class StoryblokPage < Page
    def initialize(site, base, dir, story, links)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      # We will use the page component (which acts as content-type here) as layout
      layout = story['content']['component']

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), layout + '.html')

      # Assign the received data from the Storyblok API as variables
      self.data['story']   = story
      self.data['title']   = story['name']
      self.data['links']   = links
    end
  end

  class StoryblokPageGenerator < Generator
    safe true

    def generate(site)
      # change this to your preview token
      client = ::Storyblok::Client.new(token: 'wp7qdJrYewGupG6UP8eFfAtt', version: 'draft')
      res = client.stories
      stories = res['data']['stories']

      res_links = client.links
      links = res_links['data']['links']

      stories.each do |story|
        site.pages << StoryblokPage.new(site, site.source, story['full_slug'], story, links)

        if story['full_slug'] == 'home'
          site.pages << StoryblokPage.new(site, site.source, '', story, links)
        end
      end
    end
  end
end