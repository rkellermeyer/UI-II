module ProjectsHelper
  class << self
    def form_helpers
      @form_helpers ||= YAML.load_file('config/form_helpers.yml').deep_symbolize_keys
    end

    def reasons
      @reasons ||= form_helpers[:reasons]
    end

    def inventorships
      @inventorships ||= form_helpers[:inventorships]
    end
  end

  FormHelper = Struct.new(:value, :label)

  REASONS = reasons.map { |reason| FormHelper.new(reason[:value].to_sym, reason[:label]) }.freeze
  INVENTORSHIPS = inventorships.map { |inventorship| FormHelper.new(*inventorship.values) }.freeze

  def reasons
    REASONS
  end

  def inventorships
    INVENTORSHIPS
  end

  def category_options
    options_from_collection_for_select(Category.all, :id, :name, project.category_id)
  end
end
