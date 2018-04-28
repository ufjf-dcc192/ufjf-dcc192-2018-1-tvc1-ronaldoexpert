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
                    <th colspan="2" width="10%">Ações</th>
                </thead>
                <tbody> 
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>             
                    </tr> 
                    <TR><td COLSPAN = 7><a href="novoAnfitriao.html?id=-1" class="edit">Adicionar Hospedagem</a></td></TR>
                </tbody>
            </table>
        </div>
</div>
    
 <%@include file="../jspf/footer.jspf" %>    
