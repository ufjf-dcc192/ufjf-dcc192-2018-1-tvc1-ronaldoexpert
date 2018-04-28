    
<%@page import="dcc192.ufjf.Anfitriao"%>
<%@page import="java.util.List"%>
<%@include file="../jspf/cabecalho.jspf" %>
<link rel="stylesheet" href="css/colour.css">
<link rel="stylesheet" href="css/template.css">

    <h3>Lista de Mesas</h3>
        <div class="grid_16">
            <table>
                <thead>    
                    <th>Código</th>
                    <th>Nome</th>
                    <th>Tipo</th>
                    <th>Descrição</th>
                    <th>Disponível</th>
                    <th>Telefone</th>
                    <th colspan="2" width="10%">Ações</th>
                </thead>
                <tbody>
                    <%
                        int i = 0;
                        for(Anfitriao anfitriao : (List<Anfitriao>) request.getAttribute("anfitrioes")) {
                    %>   
                    <tr>
                        <td><%=i+1 %></td>
                        <td><%=anfitriao.getNome() %></td>
                        <td><%=anfitriao.getTipoMoradia() %></td>
                        <td><%=anfitriao.getDescricao() %></td>
                        <td><%=anfitriao.getDisponivel() %></td>
                        <td><%=anfitriao.getTelefone() %></td>
                        <td><a href="novoAnfitriao.html?id=<%=i%>" class="edit">Editar</a></td>               
                    </tr>
                    <%
                        i++;
                    }            
                    %>  
                    <TR><td COLSPAN = 7><a href="novoAnfitriao.html?id=-1" class="edit">Novo Anfitriao</a></td></TR>
                </tbody>
            </table>
        </div>
                
 <%@include file="../jspf/footer.jspf" %>                