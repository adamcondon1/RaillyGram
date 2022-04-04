class PostDecorator < Draper::Decorator
  delegate_all

def full_post
    object.title + ' ' + object.comment
	end
end
