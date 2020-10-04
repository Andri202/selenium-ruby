# include gems for selenium
require    'selenium-webdriver'
require    'webdrivers'

driver = Selenium::WebDriver.for:chrome

driver.navigate.to('https://devexpress.github.io/testcafe/example/')
sleep 5


#element selector
name_text_field = 'input#developer-name'
populate_button = 'input#populate'
remote_checbox = 'input#remote-testing'
paraller_checbox = 'input#background-parallel-testing'
os_macos_radio = 'input#macos'
interface_selecbox = 'select#preferred-interface'
tried_checbox = 'input#tried-test-cafe'

slider_area = 'div.ui-slider'
slider_handle = 'span.ui-slider-handle'

comment_text_area = 'textarea#comments'

submit_button = 'button#submit-button'

#driver.find_element(:css, name_text_field).send_keys('atlas teams')
driver.find_element(:css, populate_button).click
driver.switch_to.alert.accept
sleep 2

#pilih checkbox feature
driver.find_element(:css, remote_checbox).click
driver.find_element(:css, paraller_checbox).click
sleep 2

#pilih radio button
driver.find_element(:css, os_macos_radio).click
sleep 2

#pilih interface select box
select_box = driver.find_element(:css, interface_selecbox)
options = Selenium::WebDriver::Support::Select.new(select_box)
options.select_by(:text, 'Both')
sleep 2

#pilih checbox
driver.find_element(:css, tried_checbox).click
sleep 2

#slider
slider = driver.find_element(:css, slider_area)
slider_handle = driver.find_element(:css, slider_handle)

slider_size = slider.size
slider_width = slider_size.width

driver.action.move_to(slider_handle).drag_and_drop_by(slider_handle, slider_width * 3/9, 0).perform
sleep 2

#isi komentar
driver.find_element(:css, comment_text_area).send_keys('noo !!!!!!!!!')

#submit form
driver.find_element(:css, submit_button).click
sleep 2