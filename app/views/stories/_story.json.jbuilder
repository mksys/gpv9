json.extract! story, :id, :category_id, :template_id, :race_detail_id, :legacy_photo, :storyid, :headline, :sort_name, :abstract, :body, :body_html, :filename, :name_slug, :legacy_filename, :author, :feature_type, :revision, :priority, :publish, :analysis, :show_author, :date_live_at, :date_live_on, :created_at, :updated_at
json.url story_url(story, format: :json)
