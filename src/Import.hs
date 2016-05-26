{-# LANGUAGE TemplateHaskell, QuasiQuotes #-}
module Import where

import Yesod
import Yesod.Static
 
pRoutes = [parseRoutes|
   /Homer GET
   /contato ContatoR GET
   /locacao LocacaoR GET POST
   /quemSomos QuemSomosR GET
   /vendas VendasR GET POST
   /erro ErrorR GET
   /cadastro CadastroR GET POST
   /perfil/#PessoaId PessoaR GET
   /login LoginR GET POST
   /listar ListarR GET
   /logout LogoutR GET
   /admin AdminR GET
   /vendas VendasR GET POST
   /user UsuarioR GET POST --usado somente para adiciona outros admnistradores
   
|]




