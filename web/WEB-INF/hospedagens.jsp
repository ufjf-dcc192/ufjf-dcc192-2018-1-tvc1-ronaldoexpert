<%@page import="dcc192.ufjf.Hospedagem"%>
<%@page import="java.util.List"%>
<%@include file="../jspf/cabecalho.jspf" %>
<link rel="stylesheet" href="css/colour.css">
<link rel="stylesheet" href="css/template.css">

<h3>Hospedagens</h3>
<div class="grid_16">
    <div class="grid_16">
            <table>
                <thead>    
                    <th>Código</th>
                    <th>Anfitrião</th>
                    <th>Intercambista</th>
                    <th>Data Inicio</th>
                    <th>Data Fim</th>
                </thead>
                <tbody> 
                    <%
                        int i = 0;
                        for(Hospedagem hospedagem : (List<Hospedagem>) request.getAttribute("hospedagens")) {
                    %> 
                    <tr>
                        <td><%=i %></td>
                        <td><%=hospedagem.getAnfitriao().getNome() %></td>
                        <td><%=hospedagem.getIntercambista().getNome() %></td>
                        <td><%=hospedagem.getDataInicio() %></td>
                        <td><%=hospedagem.getDataFim()%></td>             
                    </tr> 
                    <%
                        i++;
                     }
                    %> 
                    <TR><td COLSPAN = 7><a href="novoAnfitriao.html?id=-1" class="edit">Adicionar Hospedagem</a></td></TR>
                </tbody>
            </table>
        </div>
</div>
    
 <%@include file="../jspf/footer.jspf" %>    
