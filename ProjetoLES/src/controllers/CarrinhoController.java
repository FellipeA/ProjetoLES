package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoProduto;
import entity.Produto;

@WebServlet("/carrinho/*")
public class CarrinhoController extends HttpServlet {
	
	private DaoProduto daoProduto = new DaoProduto();
	
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getPathInfo().replace("/", "");
		switch (path) {
		case "":
			response.sendRedirect("/ProjetoLES/carrinho.jsp");
			break;
		case "remover":
			List<Produto> carrinho = (List<Produto>) request.getSession().getAttribute("carrinho");
			int idProduto = Integer.parseInt(request.getParameter("id"));
			Produto p = daoProduto.getProdutoPorId(idProduto);
			carrinho.remove(p);
			break;
		case "finalizar":
			finalizarCompra(request, response);
			break;
		default:
			break;
		}
	}
	
	@SuppressWarnings("unchecked")
	private void finalizarCompra(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Produto> carrinho = (List<Produto>) request.getSession().getAttribute("carrinho");
		
	}

	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Produto> carrinho;
		if (request.getSession().getAttribute("carrinho") == null) {
			carrinho = new ArrayList<Produto>();
			request.getSession().setAttribute("carrinho", carrinho);
		} else {
			carrinho = (List<Produto>) request.getSession().getAttribute("carrinho");
		}
		
		long idProduto = Long.parseLong(request.getParameter("id"));
		Produto p = new Produto();
		p = daoProduto.getProdutoPorId(idProduto);
		
		carrinho.add(p);
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Chamada Realizada com Sucesso!');");
		out.println("var url= \"./index.jsp\"; window.location = url; </script>"); 
		
	}
	
}
