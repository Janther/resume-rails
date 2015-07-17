#
# This class help the creation of material icons in the UI.
#
class MaterialIcon
  #
  # Create the HTML code for the icon. This method check if selected mode is
  # unicode or ligatures.
  #
  # == Returns:
  # Safe string
  #
  def to_s
    # Sanitize html
    @html = @html.nil? || !@html.is_a?(Hash) ? {} : @html

    # Create the icon
    if unicode?
      content_tag(:i, '',
                  @html.merge(
                    style: @style,
                    class: "material-icons #{@icon}#{@size}#{@rotation}#{@css_class}"))
    else
      content_tag(:i, "#{@icon}",
                  @html.merge(
                    style: @style,
                    class: "material-icons#{@size}#{@rotation}#{@css_class}"))
    end
  end
end
