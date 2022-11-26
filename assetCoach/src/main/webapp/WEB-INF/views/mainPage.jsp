<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
	<body>
		MainPage
				
		<c:choose>
			<c:when test="${not empty loginUser.userEmail}">
				UserID : ${loginUser.userEmail}			
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
		
		<!-- move to recordDepositAndWithdrawal	-->
		<button type="button" onclick="location.href='/main/accountBook/recordDepositAndWithdrawal'" >
			家計簿を登録する
		</button>

		<!-- move to accountManage accountList -->
		<button type="button" onclick="location.href='/main/accountManage/accountList'" >
			口座を登録する。
		</button>
		
		<!-- table of user asset status  -->
		<c:choose>
			<c:when test="${not empty loginUser.userEmail and not empty userAccoutList}">
				<table border="1" style="margin:5%;">
					<!-- table header -->
						<tr>
							<td rowspan="2">
								期間(year-month)
							</td>
							<td colspan="3">
								資産(asset)
							</td>
							<td rowspan="2">
								負債(debt)
							</td>
							<td rowspan="2">
								純資産(net assets)
							</td>
						</tr>
				
						<!-- table header-detail「資産(asset)」 -->
						<tr>
							<td>
								預金(deposit)
							</td>
							<td>
								積金(installment savings)
							</td>
							<td>
								株式(stock)
							</td>
						</tr>
						
						<!-- user account list output -->
						<tr>
							<!-- 期間(year-month) -->
							<td>
								2022年07月
							</td>
							
							<!-- 預金(deposit) -->
							<td>
								¥500,000
							</td>
							
							<!-- 積金(installment savings) -->
							<td>
								¥500,000
							</td>
							
							<!-- 株式(stock) -->
							<td>
								¥10,000,000
							</td>
							
							<!-- 負債(debt) -->
							<td>
								¥1,000,000
							</td>
							
							<!-- 純資産(net assets) -->
							<td>
								¥10,000,000
							</td>
						</tr>
						
						<tr>
							<!-- 期間(year-month) -->
							<td>
								2022年08月
							</td>
							
							<!-- 預金(deposit) -->
							<td>
								¥1,500,000
							</td>
							
							<!-- 積金(installment savings) -->
							<td>
								¥500,000
							</td>
							
							<!-- 株式(stock) -->
							<td>
								¥10,000,000
							</td>
							
							<!-- 負債(debt) -->
							<td>
								¥1,000,000
							</td>
							
							<!-- 純資産(net assets) -->
							<td>
								¥11,000,000
							</td>
						</tr>
					</table>
				</c:when>
			<c:otherwise>
				<table border="1" style="margin:5%;">
					<!-- table header -->
					<tr>
						<td rowspan="2">
							期間(year-month)
						</td>
						<td colspan="3">
							資産(asset)
						</td>
						<td rowspan="2">
							負債(debt)
						</td>
						<td rowspan="2">
							純資産(net assets)
						</td>
					</tr>
			
					<!-- table header-detail「資産(asset)」 -->
					<tr>
						<td>
							預金(deposit)
						</td>
						<td>
							積金(installment savings)
						</td>
						<td>
							株式(stock)
						</td>
					</tr>
					
					<!-- user account list output -->
					<tr>
						<td colspan="6" style="text-align: center;">
							登録した資産がないです。
							<br/>口座を登録すれば資産が表示されます。
							<br/><!-- move to accountManage accountList -->
								<button type="button" onclick="location.href='/main/accountManage/accountList'" >
									口座を登録する。
								</button>
						</td>
					</tr>
				</table>
			</c:otherwise>			
		</c:choose>		

	</body>
</html>