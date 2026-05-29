# Workaround: o gem `pg` (1.6.x) abre conexoes em modo assincrono por padrao,
# fazendo o polling do socket em Ruby. Esse caminho quebra com PostgreSQL 18 no
# Windows e reporta o generico "server closed the connection unexpectedly" no
# meio do handshake. Forcar a API sincrona da libpq faz a conexao completar
# normalmente (mesmo caminho que o psql usa).
#
# Remover quando o gem pg ou o PostgreSQL no Windows corrigirem o modo assincrono.
require "pg"
PG::Connection.async_api = false
