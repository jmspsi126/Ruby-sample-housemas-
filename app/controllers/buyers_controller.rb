class BuyersController < ApplicationController
  layout 'articles'
  before_filter :zee_sidebar

  def index
    @header_title = "HOME BUYERS"
    # Create list with all buyer articles
    # @article_list = Resource.get_articles([4,5,6])
    # # @article_list = ArticleHelper.build_article_list([
    # #   'Pzr803H_efhlkltnLlh6yw',
    # #   'NXt49053PNUekYqrRzpUFg',
    # #   '5tBc9Vm2HP8XBnJx9vtaCw',
    # #   'Rap2nLQ5-bxr0DjEppGWXQ',
    # #   'eDW3GglJpLMwyx27OJa2xw',
    # #   'ATOV2QWVwj6CYybnW635VA',
    # #   'pnBuAvCc_6da1FhPsqU8Ig'
    # # ])

    # Skyword articles
    @article_list = ArticleHelper.for_category('buyers')

    article_keywords() # create keyword list
  end

  def show
    # @article = ArticleHelper.find_by_container_name(params[:id])
    # Skyword article
    @article = ArticleHelper.for_slug(params[:id])
  end
end
