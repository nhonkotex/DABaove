<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="code.model.Adduser"%>
<%@page import="code.dao.AddUserDao"%>
<%@page import="code.connection.DbCon"%>
<%
    String searchString = request.getParameter("searchString");
    AddUserDao userDao = new AddUserDao(DbCon.getConnetion());
    List<Adduser> userList = userDao.searchUsers(searchString);
    
    AddUserDao Ql = new AddUserDao(DbCon.getConnetion());
    List<Adduser> user1 = Ql.getAllUser1();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Search User</title>
    </head>
    <body>
        <h1>Search User</h1>
        <form action="UserSearch" method="get">
            <input type="text" name="searchString" placeholder="Enter user name" />
            <input type="submit" value="Search" />
        </form>
        <hr />
        <% if (userList != null && userList.size() > 0) { %>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                </tr>
                <% for (Adduser user : userList) { %>
                    <tr>
                        <td><%= user.getId() %></td>
                        <td><%= user.getName() %></td>
                        <td><%= user.getEmail() %></td>
                        <td><%= user.getSodienthoai() %></td>
                        <td><%= user.getDiachi() %></td>
                    </tr>
                <% } %>
            </table>
        <% } else { %>
            <p>No users found.</p>
        <% } %>
        <table class="table table-light">
	
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th scope="col">Số điện Thoại</th>
					<th scope="col">Địa chỉ</th>
					<th scope="col">Sửa</th>
					<th scope="col">Xoá TK</th>
					
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!user1.isEmpty()) {
				for (Adduser q : user1) {		
				%>
					<tr>
						<td><%=q.getId() %></td>
						<td><%=q.getName() %></td>
						<td><%=q.getEmail() %></td>
						<td><%=q.getPassword() %></td>
						<td><%=q.getSodienthoai() %></td>
						<td><%=q.getDiachi() %></td>
						<td><a class="btn btn-sm btn-danger" href="#?id=<%=q.getId() %>">sửa
						</a></td>
						<td><a class="btn btn-sm btn-danger" href="delete-user?id=<%=q.getId() %>">Xoá
						</a></td>
						
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
					<h1>User Information</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Address</th>
		</tr>
		<tr>
			<td id="id"></td>
			<td id="name"></td>
			<td id="email"></td>
			<td id="phone"></td>
			<td id="address"></td>
		</tr>
	</table>
    </form>
    </body>
</html>
