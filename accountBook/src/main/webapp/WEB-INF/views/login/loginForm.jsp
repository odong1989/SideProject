<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<body>
		LoginForm pages.
		<form name="loginForm" method="post" action="/main/login/loginCheck">
			<table>
				<tr>
					<td>
						E-mail
					</td>
					<td>
						<input type="text" name="userEmail" id="userId">
					</td>
				</tr>
					<tr>
					<td>
						Password
					</td>
					<td>
						<input type="password" name="userPassword" id="userPassword">
					</td>
				</tr>
			</table>
			<input type="submit" value="login">
			<!-- <button type="button" id="loginButton">Login</button>  -->	
		</form>
	</body>
</html>