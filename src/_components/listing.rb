class Listing < Bridgetown::Component
  def initialize(resource:)
    @resource = resource
  end

  def date
    DateRangeFormatter.new(from: @resource.data.dal, to: @resource.data.al).formatted_date_range
  end

  def formatted_from_datetime
    date = Date.parse(@resource.from)
    # I18n.l(date, format: :standard).to_s + @resource.from
  end
end