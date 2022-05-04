json.extract! legacy_photo, :id, :has_photo, :has_thumbnail, :display_photo, :link_photo, :thumbnail_photo, :display_photo_width, :display_photo_height, :thumbnail_photo_width, :thumbnail_photo_height, :caption, :copyright, :story_id, :created_at, :updated_at
json.url legacy_photo_url(legacy_photo, format: :json)
