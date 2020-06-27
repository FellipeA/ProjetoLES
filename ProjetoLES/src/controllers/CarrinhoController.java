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
		List<Produto> carrinho;
		Produto p;
		long idProduto;
		switch (path) {
		case "":
			response.sendRedirect("/ProjetoLES/carrinho.jsp");
			break;
		case "remover":
			carrinho = (List<Produto>) request.getSession().getAttribute("carrinho");
			idProduto = Long.parseLong(request.getParameter("id"));
			p = daoProduto.getProdutoPorId(idProduto);
			carrinho.remove(p);
			break;
		case "finalizar":
			finalizarCompra(request, response);
			break;
		case "add":
			if (request.getSession().getAttribute("usuario") != null) {
				if (request.getSession().getAttribute("carrinho") == null) {
					carrinho = new ArrayList<Produto>();
					request.getSession().setAttribute("carrinho", carrinho);
				} else {
					carrinho = (List<Produto>) request.getSession().getAttribute("carrinho");
				}
				idProduto = Long.parseLong(request.getParameter("id"));
				p = new Produto();
				p = daoProduto.getProdutoPorId(idProduto);
				carrinho.add(p);
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Produto adicionado ao carrinho com Sucesso!');");
				out.println("var url= \"/ProjetoLES/index.jsp\"; location = url; </script>");
			} else {
				response.sendRedirect("/ProjetoLES/login");
			}
			break;
		default:
			break;
		}
	}
	
	@SuppressWarnings("unchecked")
	private void finalizarCompra(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Produto> carrinho = (List<Produto>) request.getSession().getAttribute("carrinho");
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
