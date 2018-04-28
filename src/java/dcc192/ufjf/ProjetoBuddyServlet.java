package dcc192.ufjf;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PedidosServlet", urlPatterns = {"/ProjetoBuddyServlet.html", "/anfitriao.html","/principal.html",
                                    "/novoAnfitriao.html"})
public class ProjetoBuddyServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
         if("/anfitriao.html".equals(request.getServletPath())){
             listarAnfitrioes(request, response);
        }else if("/principal.html".equals(request.getServletPath())){
             princpal(request, response);   
        }else if("/novoAnfitriao.html".equals(request.getServletPath())){
             novoAnfitriao(request, response);   
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if ("/novoAnfitriao.html".equals(request.getServletPath())){
            String nome = request.getParameter("nome");
            String tipoMoradia = request.getParameter("tipoMoradia");
            String descricao = request.getParameter("descricao");
            String disponivel = request.getParameter("disponivel");
            
            
            Anfitriao anf = new Anfitriao(nome, tipoMoradia, descricao, disponivel);
            
            if ("-1".equals(request.getParameter("id"))){                
                ListaDeAnfitrioes.getInstance().add(anf);    
            }else{
                ListaDeAnfitrioes.getInstance().set(Integer.parseInt(request.getParameter("id")), anf);
            }
            response.sendRedirect("anfitriao.html");             
        }
    }
        
    
    
    private void listarAnfitrioes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Anfitriao> anfitrioes = new ListaDeAnfitrioes().getInstance();
        request.setAttribute("anfitrioes", anfitrioes);

        RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/anfitrioes.jsp");
        despachante.forward(request, response);
    }

    private void princpal(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/principal.jsp");
        despachante.forward(request, response);
    }

    private void novoAnfitriao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int i = Integer.parseInt(request.getParameter("id"));
        if (i >= 0){
            List<Anfitriao> anfitrioes = new ListaDeAnfitrioes().getInstance();
            request.setAttribute("anfitrioes", anfitrioes.get(i));    
        }        
        
        RequestDispatcher despachante = request.getRequestDispatcher("/WEB-INF/novoAnfitriao.jsp");
        despachante.forward(request, response);
    }
}