class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string        :slug                   # articles url path id
      t.string        :title
      t.string        :seo_title
      t.string        :seo_description
      t.string        :seo_keywords
      t.text          :body
      t.boolean       :is_featured            # featured at top of resources page
      t.datetime      :published_date
      t.integer       :view_count             # how many times full article was clicked on
      t.string        :author
      t.string        :author_image
      t.string        :header_image_home      # image to show on home page slider
      t.string        :header_image           # image to show on resources page slider
      t.string        :article_image          # image for article blocks and article header

      t.timestamps
    end
    add_index(:resources, :slug)
    add_index(:resources, :title)
    add_index(:resources, :author)
    add_index(:resources, :seo_title)
    add_index(:resources, :seo_description)
    add_index(:resources, :seo_keywords)
  end
end
