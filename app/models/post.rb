class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :born_on, type: String
  field :starred, type: Mongoid::Boolean
  field :starred_at, type: DateTime
  field :email, type: String
  field :url, type: String

  def self.weekly_update
    @posts = Post.all
    @posts.each do |post|
      UserMailer.weekly_mail(post.email).deliver_later
    end
  end
end
