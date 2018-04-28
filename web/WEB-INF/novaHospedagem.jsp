<%@page import="dcc192.ufjf.ListaDeAnfitrioes"%>
<%@page import="dcc192.ufjf.ListaDeIntercambistas"%>
<%@page import="dcc192.ufjf.Anfitriao"%>
<%@page import="dcc192.ufjf.Intercambista"%>
<%@page import="java.util.List"%>
<%@include file="../jspf/cabecalho.jspf" %>
<link rel="stylesheet" href="css/colour.css">
<link rel="stylesheet" href="css/template.css">

<h3>Edição de Anfitrião</h3>
<div class="grid_16">
    <div class="grid_4">
        <form method="post">
            <label>Anfitrião 
                <select name="anfitrioes">
                    <%
                        List<Anfitriao> anfitrioes = new ListaDeAnfitrioes().getInstance();
                        for(int i = 0; i < anfitrioes.size(); i++) {
                    %> 
                    <option value="<%=anfitrioes.get(i)%>"><%=anfitrioes.get(i).getNome() %></option>
                    <%
                    }            
                    %>
                </select>
            </label>
            <label>Anfitrião 
                <select name="intercambistas">
                    <%
                        List<Intercambista> intercabista = new ListaDeIntercambistas().getInstance();
                        for(int i = 0; i < intercabista.size(); i++) {
                    %> 
                    <option value="<%=intercabista.get(i)%>"><%=intercabista.get(i).getNome() %></option>
                    <%
                    }            
                    %>
                </select>
            </label>
                
            <label>Data inicio <input type="text" name="dtInicio" value="" /> </label>
            <label>Data Fim <input type="text" name="dtFim" value="" /> </label> 
            <input type="submit" value="Gravar" />  
        </form>
    </div>
</div>
    
 <%@include file="../jspf/footer.jspf" %>    
