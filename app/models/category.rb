class Category < ActiveRecord::Base
  
  has_many :clues
    
  #include PgSearch
  #pg_search_scope :custom_search, :against => [:title]
  #multisearchable against: [:title]
    

  
  def as_json(options={})
     options[:except] ||= [:updated_at, :created_at]
     super(options)
   end
end
