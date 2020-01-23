class MapeandoElementosPage < SitePrism::Page
    set_url '/users/new'
    element :nome, '#user_name'
  
    def preencher
     nome.set 'Teste' 
    end
end    