from playwright.sync_api import sync_playwright

def run(playwright):
    browser = playwright.chromium.launch(headless=False)
    context = browser.new_context()

    # Open new page
    page = context.new_page()

    # Go to https://www.wikipedia.org/
    page.goto("https://www.wikipedia.org/")

    # Click input[name="search"]
    page.click("input[name=\"search\"]")

    # Fill input[name="search"]
    page.fill("input[name=\"search\"]", "alo mundo")

    # Press Enter
    # with page.expect_navigation(url="https://pt.wikipedia.org/wiki/Programa_Ol%C3%A1_Mundo"):
    with page.expect_navigation():
        page.press("input[name=\"search\"]", "Enter")
    # assert page.url == "https://pt.wikipedia.org/wiki/Al%C3%B4_mundo"

    # ---------------------
    context.close()
    browser.close()

with sync_playwright() as playwright:
    run(playwright)