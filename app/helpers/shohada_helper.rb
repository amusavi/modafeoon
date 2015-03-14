module ShohadaHelper
 # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Ya Zeinab"
    sh="Shahid"
    if page_title.empty?
      base_title
    else
      "#{sh} #{page_title} "
    end
  end
end
