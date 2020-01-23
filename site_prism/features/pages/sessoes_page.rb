class Sessao < SitePrism::Section
   
    element :youtube, 'a[href="https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA"]'
    element :medium, 'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'
    element :capybara, 'a[href="https://www.udemy.com/automacao-de-testes-com-capybara-cucumber-e-ruby/"]'
    element :httparty, 'a[href="https://www.udemy.com/testes-automatizados-de-api-com-httparty-rspec/"]'
    element :consultoria, 'a[href="https://consultoriabatista.herokuapp.com/"]'

end    

class Pagina < SitePrism::Page
    set_url '/buscaelementos/radioecheckbox'

    section :navbar, Sessao, '.nav-wrapper'

end    