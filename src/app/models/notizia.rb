class Notizia < ActiveRecord::Base
  has_and_belongs_to_many :unita
  validates	:title, presence: true
  validates	:text,  presence: true

  before_validation :sanitize_content, :on => [:create, :update]

  private
    def sanitize_content
      self.text = sanitize_html(self.text)
    end

    def sanitize_html(field)
      ActionController::Base.helpers.sanitize(field,
        :tags => %w(a b i strong em p param h1 h2 h3 h4 h5 h6 br hr ul li img table tbody tr td thead tbody tfoot iframe del),
        :attributes => %w(href name src type value width height data) );
    end

end
