from robot.libraries.BuiltIn import BuiltIn

def get_page_heading():
   """Regresa el texto del primer <h1> de la página."""
   selib = BuiltIn().get_library_instance('SeleniumLibrary')
   driver = selib.driver
   h1 = driver.find_element("css selector", "h1")
   return h1.text