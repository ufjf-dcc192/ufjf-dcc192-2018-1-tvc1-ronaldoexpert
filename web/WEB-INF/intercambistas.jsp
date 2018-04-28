    
<%@page import="dcc192.ufjf.Intercambista"%>
<%@page import="java.util.List"%>
<%@include file="../jspf/cabecalho.jspf" %>
<link rel="stylesheet" href="css/colour.css">
<link rel="stylesheet" href="css/template.css">

    <h3>Lista de Intercambistas</h3>
        <div class="grid_16">
            <table>
                <thead>    
                    <th>Código</th>
                    <th>Nome</th>
                    <th>País Origem</th>
                    <th>Idiomas</th>
                    <th colspan="2" width="10%">Ações</th>
                </thead>
                <tbody>
                    <%
                        int i = 0;
                        for(Intercambista intercambista : (List<Intercambista>) request.getAttribute("intercambistas")) {
                    %>   
                    <tr>
                        <td><%=i+1 %></td>
                        <td><%=intercambista.getNome() %></td>
                        <td><%=intercambista.getPaisOrigem() %></td>
                        <td><%=intercambista.getIdiomas() %></td>
                        <td><a href="novoIntercambista.html?id=<%=i%>" class="edit">Editar</a></td>               
                    </tr>
                    <%
                        i++;
                    }            
                    %>  
                    <TR><td COLSPAN = 5><a href="novoIntercambista.html?id=-1" class="edit">Novo Intercambista</a></td></TR>
                </tbody>
            </table>
        </div>
                
 <%@include file="../jspf/footer.jspf" %>                