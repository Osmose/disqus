require 'test/unit'
require 'disqus'

class DisqusWidgetTest < Test::Unit::TestCase

  def test_combo
    assert Disqus::Widget::combo(:account => "example.com")
  end

  def test_recent_comments
    assert Disqus::Widget::recent_comments(:account => "example.com")
  end

  def test_popular_threads
    assert Disqus::Widget::popular_threads(:account => "example.com")
  end

  def test_top_commenters
    assert Disqus::Widget::top_commenters(:account => "example.com")
    puts Disqus::Widget::top_commenters(:account => "example.com")
  end

  def test_invalid_default_tab
    assert_raises Disqus::Widget::Error do
      Disqus::Widget::combo(:account => "example.com", :default_tab => "test")
    end
  end

  def test_invalid_color
    assert_raises Disqus::Widget::Error do
      Disqus::Widget::combo(:account => "example.com", :color => "test")
    end
  end

  def test_invalid_num_items
    assert_raises Disqus::Widget::Error do
      Disqus::Widget::combo(:account => "example.com", :num_items => 100)
    end
  end

end