class Numeric
  def to_words options = {}
    to_figures_array.to_words NumbersAndWords::Strategies::Base.factory, options
  end

  private

  def to_figures_array
    to_s.split(//).to_figures
  end
end