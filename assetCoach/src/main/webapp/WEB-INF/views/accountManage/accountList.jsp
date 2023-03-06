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
				<button type="button" onclick="location.href='/assetcoach/login/loginForm'" >
					ログアウトする
				</button>
				 -->
			</c:when>
			<c:otherwise>
				ログインしてください。		
				<button type="button" onclick="location.href='/assetcoach/login/loginForm'" >
					ログインする
				</button>
			</c:otherwise>			
		</c:choose>
		
		現在口座情報です。
		<table  border="1" style="margin:5%;" >
			<tr>
				<th colspan="2"> 金融機関の名前 </th>
				<th> 金融機関の支店名 </th>
				<th colspan="2"> 口座の残高 </th>
				<th> 口座番号 </th>
				<th> 口座の別名 </th>
				<th> 口座説明 </th>
			</tr>
			
			<c:forEach var="userBankAccount" items="${userBankAccountList}">
				<tr>
					<!-- 金融機関の名前 -->
					<td>LogoImage</td><!-- 金融機関のLogoimage -->
					<td>${userBankAccount.bankName}</td><!-- 金融機関のlOGO名前 -->
					<!-- 金融機関の支店名 --> 
					<td>${userBankAccount.bankBranchName}</td>
					<!-- 口座の残高 -->
					<td>KRW<!-- currencyType --></td> 
					<td>5,000,000<!-- holdingSum --></td> 
					<!-- 口座番号 --> 
					<td>${userBankAccount.accountNumber}</td> 
					<!-- 口座の別名 --> 
					<td>${userBankAccount.nickname}</td> 
					<!-- 口座説明 --> 
					<td>${userBankAccount.memo}</td>
				</tr>
			</c:forEach>
		</table>
		
		<br />
		----------------------------------------------------------------------------------------

		<br />
		新しい口座を登録します。

		<br />
		<form action="/assetcoach/accountManage/addUserBankAccount" method="post">
			<table border="1" style="margin:5%;" >
				<tr>
					<td>金融機関の名前</td>
					<td>金融機関の支店名</td>
					<td>口座番号</td>
					<td>口座の姓</td>
					<td>口座の名</td>
					<td>口座の別名</td>
					<td>口座説明</td>
				</tr>
				<tr>
					<input type="hidden" name="userIdx" value="${userIdx}"> 
					<!-- 金融機関の名前 -->
					<td style="width= 250px;">
						<select id="bankList" name="bankIdx"> 
							<c:forEach var="bank" items="${bankList}">
								<option value="${bank.bankIdx}">
									${bank.bankName}
								</option>
							</c:forEach>
						</select>
					</td>
					<!-- 金融機関の支店名 -->
					<td style="width: 250px;">
						<select id="bankList" name="bankBranchIdx"> 
							<c:forEach var="bank" items="${bankList}">
								<option value="${bank.branchIdx}">
									${bank.branchName}
								</option>
							</c:forEach>
						</select>

					</td>
					<!-- 口座番号 -->
					<td> <input type="text" name="accountNumber"> </td>
					<!-- 口座の姓 -->
					<td> <input type="text" name="familyName"> </td>
					<!-- 口座の名 -->
					<td> <input type="text" name="lastName"> </td>
					<!-- 口座の別名 -->
					<td> <input type="text" name="lastName"> </td>
					<!-- 口座説明  -->
					<td> <input type="text" name="memo"> </td>
				</tr>
			</table>
			
			<button type="submit">
				この口座情報を登録します。
			</button>
					
		</form>
</html>