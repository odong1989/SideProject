<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
	<body>
		MainPage
		
		UserID : ${loginUser.userEmail}
		<table border="1" style="margin:5%;">
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
			<tr>
				<!-- 「資産(asset)」 -->
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
		
		<button type="button" onclick="location.href='/accountBook/recordDepositAndWithdrawal'" >
			move to recordDepositAndWithdrawal
		</button>

		<button type="button" onclick="location.href='/accountManage/accountList'" >
			move to accountManage accountList
		</button>

	</body>
</html>