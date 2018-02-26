class AgentsController < ApplicationController
  layout 'articles'
  before_filter :zee_sidebar

  def index
    @header_title = "AGENTS"
    # Create list with all agent articles
    # @article_list = Resource.get_articles([1,2,3])
    # # @article_list = ArticleHelper.build_article_list([
    # #   'ZBLIrobqBx7q8L1Qm3K_yw',
    # #   # 'ke8ZD45XEQevf3T8MHZIAA', # Carean asked to pull down, needs work
    # #   'gvWzL1JDuodAIjEWzeiK1w'
    # # ])

    # Skyword articles
    @article_list = ArticleHelper.for_category('agents')

    article_keywords() # create keyword list
  end

  def show
    # @article = ArticleHelper.find_by_container_name(params[:id])
    # Skyword article
    @article = ArticleHelper.for_slug(params[:id])
  end
end
