<%@ page import="br.com.reclamacaojspjava.dao.ReclamacaoDao, br.com.reclamacaojspjava.bean.Reclamacao"%>
<jsp:useBean id="u" class="br.com.reclamacaojspjava.bean.Reclamacao"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i = ReclamacaoDao.deletarReclamacao(u);
response.sendRedirect("avaliacoes.jsp");
%> 