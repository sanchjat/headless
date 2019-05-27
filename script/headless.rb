Selenium::WebDriver::Chrome.driver_path = "./chromedriver"


def get_html(url)
    browser = Watir::Browser.new(:chrome, {:chromeOptions => {:args => ['--headless', '--window-size=1200x600']}})
    browser.goto url
    sleep 2
    htmlSource = browser.html
    print htmlSource
end
    
get_html("http://example.com")
