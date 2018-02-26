class ArticleHelper

  def self.for_category(category)
    # # =====================================================================
    # # use this when Skyword is feeding us categories
    # # =====================================================================
    # # get articles by category
    # response = ApiCall.get("http://skyword.housemaster.com/api/articles/?format=json&categories__slug=#{category}")

    # # p "response.code: #{response.code}"
    # if response.code == "200"
    #   cat_articles = JSON.parse(response.body)
    #   # p '-----------------'
    #   # p "cat_articles.count: #{cat_articles.count}"
    #   # p cat_articles
    #   return cat_articles
    # end

    # =====================================================================
    # do the following until categories is pulling from Skyword
    # =====================================================================


    cat_articles = [] # all articles for category will go here
    # get all articles
    response = ApiCall.get("http://skyword.housemaster.com/api/articles/?format=json")

    # p "response.code: #{response.code}"
    if response.code == "200"
      articles = JSON.parse(response.body)
      # p articles
      # we only want to articles that match the requested category
      articles.each do |a|
        # categories not working yet, for now we'll search tags
        # if a['categories'].join(',').include? category
        tags = a["tags"].map{|t| t["name"].downcase}.join(',')
        # p "tags: #{tags}"
        # p "tags.include('#{category}'): #{tags.include?(category)}"
        if tags.include?(category.downcase)
          # fix slug with prepended "#{category}"
          a['slug'] = "#{category}/#{a['slug']}"
          cat_articles << a
        end
      end
    end
    # p '-----------------'
    # p "cat_articles.count: #{cat_articles.count}"
    # p cat_articles
    return cat_articles
  end

  def self.for_slug(slug)
    # get article
    response = ApiCall.get("http://skyword.housemaster.com/api/articles/#{slug}/?format=json")

    # p "response.code: #{response.code}"
    if response.code == "200"
      article = JSON.parse(response.body)

      # =====================================================================
      # TODO, remove gsub when ready for live
      # =====================================================================
      # grep and rip out this so doesn't auto remove from XML feed
      # \<script.*\>\<\/script\>
      article['body'] = article['body'].gsub(/\<script.*\>\<\/script\>/, '')

      # p '-----------------'
      # p "cat_articles.count: #{cat_articles.count}"
      # p cat_articles
      return article
    end
  end

  def self.find_by_container_name(name)
    # get all containers
    geo = Geomatic.get("/api/v1/projects/#{APP_CONFIG['geomaticly']['project_key']}/containers", APP_CONFIG['geomaticly']['developer_key'])
    if geo.code == "200"
      geo = JSON.parse(geo.body)
      # loop through, find container name and grab apikey
      apikey = ''
      geo['containers'].each do |container|
        if container['name'].downcase == name.downcase
          apikey = container['apikey']
          break;
        end
      end
      # return blocks for this apikey
      return structure_container_blocks(apikey)
    end
  end

  def self.build_article_list(apikeys)
    articles = []
    apikeys.each do |apikey|
      articles << structure_container_blocks(apikey)
    end
    return articles
  end

  def self.structure_container_blocks(apikey, return_apikey = false)
    geo = Geomatic.get("/api/v1/projects/#{APP_CONFIG['geomaticly']['project_key']}/containers/#{apikey}/blocks?language=#{I18n.locale}", APP_CONFIG['geomaticly']['developer_key'])

    obj = JSON.parse(geo.body)
    if geo.code == "200"
      geo_obj = {}
      # grab each block and structure nicely for us to use
      obj['blocks'].each do |block|
        key = 'title'
        val = 'body'
        # IN CASE we need each blocks apikey, go this route
        if return_apikey
          geo_obj[block[key].to_s] = {
            'apikey' => block['apikey'].to_s,
            'content' => block[val].html_safe
          }
        else
          geo_obj[block[key].to_s] = block[val].html_safe
        end
      end
    else
      geo_obj['error'] = obj
    end
    return geo_obj
  end
end
