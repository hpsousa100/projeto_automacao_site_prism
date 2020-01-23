class MapeandoListas < SitePrism::Page
   set_url '/buscaelementos/table'


   #pegar as colunas da tabela
   #elements :lista, 'tr > th'
   #pegar todos os elementos
   elements :lista, 'tr > td'



end
