require "capybara"

class Education
  include Capybara::DSL

  def visit_education_nav
    click_on(EDUCATION_NAV_ID)
  end

  def click_add_education
    click_on(NEW_BUTTON_ID)
  end

  def enter_institution institution
    fill_in(INSTITUTION_FIELD_ID, with: institution)
  end

  def get_institution_field
    find_field(INSTITUTION_FIELD_ID).value
  end

  def enter_course course
    fill_in(COURSE_FIELD_ID, with: course)
  end

  def get_course_field
    find_field(COURSE_FIELD_ID).value
  end

  def enter_start_date date
    fill_in(START_DATE_FIELD_ID, with: date)
  end

  def enter_end_date date
    fill_in(END_DATE_FIELD_ID, with: date)
  end

  def get_start_date_field
    find_field(START_DATE_FIELD_ID).value
  end

  def get_end_date_field
    find_field(END_DATE_FIELD_ID).value
  end

  def enter_description description
    find(:xpath, DESCRIPTION_FIELD_XPATH).set(description)

  end

  def get_description_field
    find(:xpath, DESCRIPTION_FIELD_XPATH).value
  end

  def click_save_button
    click_button(SAVE_BUTTON_ID)
  end

  def get_notice
    find(NOTICE_CLASS).text
  end


end
