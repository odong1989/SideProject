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
		account Manage Main Page
		
		
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
				<!-- 口座の残高(貨幣&金額) -->
				<!-- 口座の貨幣 -->
				<td>
					<!-- JPY(¥) -->
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
		<form action="/accountManage/addBankAccount" method="post">
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
						<input type="text" name="bankName"> 
					</td>
					<!-- 金融機関の支店名 -->
					<td>
						<input type="text" name="branchName"> 
					</td>
					<!-- 口座の残高(貨幣&金額) -->
					<!-- 口座の貨幣 -->
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
			
			<button type="submit">
				この口座情報を登録します。
			</button>
					
		</form>
</html>