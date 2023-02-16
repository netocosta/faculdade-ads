CREATE or REPLACE FUNCTION balanco (numcont IN NUMBER) 
    RETURN NUMBER 
    IS contabalanco NUMBER(11,2);
BEGIN 
    SELECT saldo_conta 
    INTO contabalanco 
    FROM pedidos 
    WHERE pedido_conta = numcont; 
    RETURN(contabalanco); 
END;