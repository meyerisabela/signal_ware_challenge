module TagsCount
  class SendCount
    def call(highest_tag_count)
      webhook_path = "https://webhook.site/aa3f7a92-5e9a-4a7b-8529-2b1434c4df62?#{highest_tag_count}"
      TagsCount::RequestService.get(webhook_path)
    end
  end
end
