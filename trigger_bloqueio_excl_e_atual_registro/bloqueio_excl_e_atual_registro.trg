create or replace trigger trg_bloqueio_atualizacao_delete
before delete or update
on nm_tabela

begin

--se usu�rio tentar deletar ou alterar o registro, mensagem ser� apresentada e a a��o n�o ser� efetivada
    if deleting or updating then
        
        raise_application_error(-20011, 'N�o � poss�vel deletar/alterar o registro! Caso necess�rio favor acionar a TI.');
        
    end if;

end;
/