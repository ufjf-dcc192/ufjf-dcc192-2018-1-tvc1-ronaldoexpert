<%@page import="dcc192.ufjf.Anfitriao"%>
<%@page import="java.util.List"%>
<%@include file="../jspf/cabecalho.jspf" %>
<link rel="stylesheet" href="css/colour.css">
<link rel="stylesheet" href="css/template.css">

<h3>Edi��o de Produtos</h3>
<div class="grid_16">
    <div class="grid_4">
        <form method="post">    
            <%
            if(!"-1".equals(request.getParameter("id"))){
                Anfitriao anf;
                anf = (Anfitriao)request.getAttribute("anfitrioes");        
            %> 
                <label>Nome <input type="text" name="descricao" value="<%=anf.getNome() %>" /> </label>
                <label>Tipo Moradia <input type="text" name="descricao" value="<%=anf.getTipoMoradia() %>" /> </label>
                <label>Descri��o <input type="text" name="descricao" value="<%=anf.getDescricao() %>" /> </label>
                <label>Dispon�vel <input type="text" name="descricao" value="<%=anf.getDisponivel() %>" /> </label>
            <%
            }else{
            %>
                <label>Nome <input type="text" name="descricao" value="" /> </label>
                <label>Tipo Moradia <input type="text" name="descricao" value="" /> </label>
                <label>Descri��o <input type="text" name="descricao" value="" /> </label>
                <label>Dispon�vel <input type="text" name="descricao" value="" /> </label>
            <%
            }
            %>   
            <input type="submit" value="Gravar" />  
        </form>
    </div>
</div>
    
 <%@include file="../jspf/footer.jspf" %>    
