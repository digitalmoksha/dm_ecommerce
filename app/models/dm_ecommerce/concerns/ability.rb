# Wrap ecommerce specific CanCan rules.  Should be included in the main app's
# Ability class.
# NOTE:  When checking abilities, don't check for Class level abilities,
# unless you don't care about the instance level.  For example, don't
# use both styles
#   can? :moderate, Forum
#   can? :moderate, @forum
# In this case, if you need to check the class level, then use specific
#    current_user.has_role? :moderator, Forum
#------------------------------------------------------------------------------

module DmEcommerce
  module Concerns
    module Ability
      def dm_ecommerce_abilities(user)
        if user
          #--- Admin
          if user.has_role?(:ecommerce_manager)
            can :manage_ecommerce, :all
            can :access_admin, :all
          end

          # can(:read, DmKnowledge::Document)   { |document| document.is_published? || user.has_role?(:reviewer)}
        else
          #--- can only read/see public blogs when not logged in
          # can(:read, CmsBlog)   { |blog| blog.can_be_read_by?(user) }
          # can(:read, CmsPost)   { |post| post.is_published? }
        end
      end
    end
  end
end
