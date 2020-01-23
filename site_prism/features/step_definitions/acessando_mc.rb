Quando("eu acessar o minha claro com dados de producao") do                  
    @inicio = PaginaInicialMC.new
    @inicio.load
    fill_in(id: 'username', with:'testeclarobrasil2@gmail.com')
    fill_in(id: 'password', with: 'Claro#135')
    find('#login-submit').click
    end                                                                         
                                                                                 
    Entao("eu verifico se o login foi realizado com sucesso.") do                 
       
        expect(page).to have_current_path('https://minhaclaro.claro.com.br/mcpf/index.html#.html/meu-plano', url: true)

    #sleep (30)
    end                                                                          
    
    