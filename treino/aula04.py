from playwright.sync_api import sync_playwright

def run(playwright):
    browser = playwright.chromium.launch(headless=False, slow_mo=3000)
    context = browser.new_context()

    # Open new page
    page = context.new_page()

    # Go to https://siae.seduc.se.gov.br/siae/Login
    page.goto("https://siae.seduc.se.gov.br/siae/Login")

    # Click input[name="Usuario"]
    page.click("input[name=\"Usuario\"]")

    # Fill input[name="Usuario"]
    page.fill("input[name=\"Usuario\"]", "355.636.055-15")

    # Press Tab
    page.press("input[name=\"Usuario\"]", "Tab")

    # Fill input[name="Senha"]
    page.fill("input[name=\"Senha\"]", "@Onibus1000w")

    # Click text=Acessar
    page.click("text=Acessar")
    # assert page.url == "https://siae.seduc.se.gov.br/siae/Home"

    # Click button:has-text("DIÁRIO")
    page.click("button:has-text(\"DIÁRIO\")")
    # assert page.url == "https://siae.seduc.se.gov.br/siae.diario/Home/Index"

    # Click :nth-match(div:has-text("JOSÉ WAGNER DA ROCHA CARDOSO / C E PROFª CLARICE DA SILVA 2021 Aula Solicitações"), 2)
    page.click(":nth-match(div:has-text(\"JOSÉ WAGNER DA ROCHA CARDOSO / C E PROFª CLARICE DA SILVA 2021 Aula Solicitações\"), 2)")

    # Click text=Notas
    page.click("text=Notas")
    # assert page.url == "https://siae.seduc.se.gov.br/siae.diario/Notas/Index"

    # Click text=68942 - 7º Ano - Anos FinaisD >> a
    page.click("text=68942 - 7º Ano - Anos FinaisD >> a")
    # assert page.url == "https://siae.seduc.se.gov.br/siae.diario/Notas/Registrar/68942"

    # ---------------------
    context.close()
    browser.close()

with sync_playwright() as playwright:
    run(playwright)