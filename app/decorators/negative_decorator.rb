class NegativeDecorator < Draper::Decorator
  delegate_all

  test "should get result" do
    get validate_url
    assert_response :success
  end

   Define presentation-specific methods here. Helpers are accessed through
   `helpers` (aka `h`). You can override attributes, for example:

     def created_at
       helpers.content_tag :span, class: 'time' do
       object.created_at.strftime("%a %m/%d/%y")
       end
     end

end
