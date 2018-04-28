<%@page import="dcc192.ufjf.Intercambista"%>
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
                Intercambista inter;
                inter = (Intercambista)request.getAttribute("intercambistas");        
            %> 
                <label>Nome <input type="text" name="nome" value="<%=inter.getNome() %>" /> </label>
                <label>País Origem <input type="text" name="paisOrigem" value="<%=inter.getPaisOrigem()%>" /> </label>
                <label>Idiomas <input type="text" name="idiomas" value="<%=inter.getIdiomas()%>" /> </label>
            <%
            }else{
            %>
                <label>Nome <input type="text" name="nome" value="" /> </label>
                <label>País Origem <input type="text" name="paisOrigem" value="" /> </label>
                <label>Idiomas <input type="text" name="idiomas" value="" /> </label>
            <%
            }
            %>   
            <input type="submit" value="Gravar" />  
        </form>
    </div>
</div>
    
 <%@include file="../jspf/footer.jspf" %>    
