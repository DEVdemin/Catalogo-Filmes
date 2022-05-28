use catalogoFilmesDB;

insert into tb_usuario (nm_usuario, ds_email, ds_senha)
	values('Admin','admin@admin.com.br', '1234');

select  id_usuario		id,
		nm_usuario 		nome,
        ds_email		email
	from tb_usuario
    where ds_email		= 'admin@admin.com.br'
    and  ds_senha		= '1234';
    
insert into tb_filme (id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel, img_filme)
values(1, 'Harry Potter e a Camara Secreta', 'Filme bom', 8.2, '2012-02-11', true, '/strorage/filmes/234567.jpg');


update tb_filme
	set nm_filme 		='Harry Potter e a Pedra Filosofal',
    ds_sinopse			='Filme bom',
    vl_avaliacao		= 9.5,
    dt_lancamento		= '2010-05-03',
    bt_disponivel		= true,
    img_filme			='strorage/filmes/asdfasdf.jp'
where id_filme = 1;

delete from tb_filme
where id_filme 	= 1;
	
select  id_filme 		id, 
		nm_filme		nome,
        vl_avaliacao	avaliacao,
        dt_lancamento	lancamento,
        bt_disponivel	disponivel
from tb_filme;

select  id_filme		id,
		nm_filme		nome,
        vl_avaliacao	avaliacao,
        dt_lancamento	lancamento,
        bt_disponivel	disponivel
from  tb_filme
where nm_filme 			like'%a%'; 

select  id_filme			id,
		nm_filme		    nome,
        vl_avaliacao		avaliacao,
        ds_sinopse			sinopse,
        dt_lancamento		lancamento,
        bt_disponivel		disponivel,
        img_filme			capa
from  tb_filme
where id_filme 				=4;