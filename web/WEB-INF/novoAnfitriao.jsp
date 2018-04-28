<%@page import="dcc192.ufjf.Anfitriao"%>
<%@page import="java.util.List"%>
<%@include file="../jspf/cabecalho.jspf" %>
<link rel="stylesheet" href="css/colour.css">
<link rel="stylesheet" href="css/template.css">

<h3>Edição de Produtos</h3>
<div class="grid_16">
    <div class="grid_4">
        <form method="post">    
            <%
            if(!"-1".equals(request.getParameter("id"))){
                Anfitriao anf;
                anf = (Anfitriao)request.getAttribute("anfitrioes");        
            %> 
                <label>Nome <input type="text" name="nome" value="<%=anf.getNome() %>" /> </label>
                <label>Tipo Moradia <input type="text" name="tipoMoradia" value="<%=anf.getTipoMoradia() %>" /> </label>
                <label>Descrição <input type="text" name="descricao" value="<%=anf.getDescricao() %>" size="70"/> </label>
                <label>Disponível <input type="text" name="disponivel" value="<%=anf.getDisponivel() %>" /> </label>
                <label>Telefone <input type="text" name="telefone" value="<%=anf.getTelefone()%>" /> </label>
            <%
            }else{
            %>
                <label>Nome <input type="text" name="nome" value="" /> </label>
                <label>Tipo Moradia <input type="text" name="tipoMoradia" value="" /> </label>
                <label>Descrição <input type="text" name="descricao" value="" /> </label>
                <label>Disponível <input type="text" name="disponivel" value="" /> </label>
                <label>Telefone <input type="text" name="telefone" value="" /> </label>
            <%
            }
            %>   
            <input type="submit" value="Gravar" />  
        </form>
    </div>
</div>
    
 <%@include file="../jspf/footer.jspf" %>    
