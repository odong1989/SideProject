<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="jp">
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<head>
	<title>account Manage Main Page</title>
	</head>
	<body>
		account Manage Main Page<br/>
		
		<c:choose>
			<c:when test="${not empty userEmail}">
				UserID : ${userEmail}			
				<!-- 
				<button type="button" onclick="location.href='/main/login/loginForm'" >
					ログアウトする
				</button>
				 -->
			</c:when>
			<c:otherwise>
				ログインしてください。		
				<button type="button" onclick="location.href='/main/login/loginForm'" >
					ログインする
				</button>
			</c:otherwise>			
		</c:choose>
		
		現在口座情報です。
		<table  border="1" style="margin:5%;" >
			<tr>
				<td colspan="2">
					金融機関の名前
				</td>
				<td>
					金融機関の支店名
				</td>
				<td colspan="2">
					口座の残高
				</td>
				<td>
					口座番号
				</td>
				<td>
					口座の別名
				</td>
				<td>
					口座説明
				</td>
			</tr>

			<tr>
				<!-- 金融機関のlOGO名前 -->
				<!-- 金融機関のLogoimage -->
				<td>
				</td>
				<!-- 金融機関の名前 -->
				<td>
				</td>
				<!-- 金融機関の支店名 -->
				<td>
				</td>
				<!-- 口座の金額 -->
				<td>
				</td>
				
				<!-- 口座番号 -->
				<td>
				</td>
				<!-- 口座の別名 -->
				<td>
				</td>
				<!-- 口座説明 -->
				<td>
				</td>
			</tr>
		</table>
		
		新しい口座を登録します。
		<form action="/main/accountManage/addUserBankAccount" method="post">
			<table  border="1" style="margin:5%;" >
				<tr>
					<td>
						金融機関の名前	<!-- bankIdx -->
					</td>
					<td>
						金融機関の支店名<!-- bankBranchIdx -->
					</td>
					<td>
						口座番号			<!-- accountNumber -->
					</td>
					<td>
						口座の姓 		<!-- familyName -->
					</td>
					<td>
						口座の名			<!-- lastName -->
					</td>
					<td>
						口座の別名		<!-- nickname -->
					</td>
					<td>
						口座説明			<!-- memo -->
					</td>
				</tr>
	
				<tr>
					<input type="hidden" name="userIdx" value="1"> 
					
					<!-- 金融機関の名前 -->
					<td style="width: 200px; margin-left: 2%;">
						<select id="bankList" name="bankIdx"> 
							<c:forEach var="bank" items="${bankList}">
								<option value="${bank.bankIdx}">
									${bank.bankName}
								</option>
							</c:forEach>
						</select>
					</td>
					<!-- 金融機関の支店名 -->
					<td>
						<select id="bankList" name="bankBranchIdx"> 
							<c:forEach var="bank" items="${bankList}">
								<option value="${bank.branchIdx}">
									${bank.branchName}
								</option>
							</c:forEach>
						</select>

					</td>
					<!-- 口座番号 -->
					<td>
						<input type="text" name="accountNumber"> 
					</td>
					<!-- 口座の姓 -->
					<td>
						<input type="text" name="familyName"> 
					</td>
					<!-- 口座の名 -->
					<td>
						<input type="text" name="accountNumber"> 
					</td>
					<!-- 口座の別名 -->
					<td>
						<input type="text" name="lastName"> 
					</td>
					<!-- 口座説明  -->
					<td>
						<input type="text" name="memo"> 
					</td>
				</tr>
			</table>
			
			<button type="submit">
				この口座情報を登録します。
			</button>
					
		</form>
</html>