require("minitest/autorun")
require("minitest/rg")
require_relative("../testing_task_2")

class CardTest < MiniTest::Test
  def setup
    @card1 = Card.new("ace", 1)
    @card2 = Card.new("hearts", 10)
    @card3 = Card.new("spades", 7)
    @card4 = Card.new("joker", 0)
    @game1 = CardGame.new
  end

  def test_check_for_ace__true
    assert_equal(true, @game1.check_for_ace(@card1))
  end

  def test_check_for_ace__false
    assert_equal(false, @game1.check_for_ace(@card2))
  end

  def test_check_for_ace__false2
    assert_equal(false, @game1.check_for_ace(@card3))
  end

  def test_highest_card__hearts
    assert_equal("hearts",  @game1.highest_card(@card1, @card2))
  end

  def test_highest_card__spades
    assert_equal("spades",  @game1.highest_card(@card1, @card3))
  end

  def test_highest_card__ace
    assert_equal("ace",  @game1.highest_card(@card4, @card1))
  end


  def test_cards_total__18
    assert_equal("You have a total of 18",  CardGame.cards_total([@card1, @card2, @card3]))
  end

  def test_cards_total__17
    assert_equal("You have a total of 17",  CardGame.cards_total([@card2, @card3]))
  end

  def test_cards_total__1
    assert_equal("You have a total of 1",  CardGame.cards_total([@card1]))
  end
end
