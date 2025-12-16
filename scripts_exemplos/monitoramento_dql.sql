select concat(nome,'-',estado) as "Cidade_estado" from dbo.cidade;

select latitude,longitude from dbo.localizacao;

select distinct nome,estado
    from dbo.cidade;

select nome,estado
    from dbo.cidade
    order by estado asc, nome asc;

select estado, count(*) as quantidade
    from dbo.cidade
    group by estado

select estado, count(*) as quantidade
    from dbo.cidade
    group by estado
    having estado in('BA','RN');

insert into dbo.cidade(nome,estado) VALUES
    ('Natal','RN');

select tempo_max,tempo_min
    from dbo.tempo
    where id_cidade in (
        select id
            from dbo.cidade
            where estado = 'BA'
    ); 

select id 
    from dbo.cidade
    where estado = 'BA';

select * from dbo.tempo;

select * from dbo.central;

select * from dbo.tempocentral;