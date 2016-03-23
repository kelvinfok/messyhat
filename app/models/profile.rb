class Profile < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_name, :against => [:my_skill]
  # multisearchable :against => [:first_name, :last_name]

  belongs_to :user

  has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  def age
    now = Time.now.utc.to_date
    birthday = date_of_birth
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def fullname
    first_name + " " + last_name
  end

  def getskillname skill_id
    return Skillset.find_by_id(skill_id)
  end

  def find_skillset_name_by_id id
    Skillset.find_by_id(skill_id).name
  end



end
