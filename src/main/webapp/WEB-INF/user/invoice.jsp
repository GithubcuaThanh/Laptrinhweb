<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<title>A simple, clean, and responsive HTML invoice template</title>

<link href="css/style-invoice.css" rel="stylesheet">
</head>

<body>


	<form method="post" action="@{/pay}">
		<div class="invoice-box">
			<table cellpadding="0" cellspacing="0">
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title"><img src="hinh/iconhome.ico" width="150"
									height="150"></td>

								<td>Invoice #: 0${bookingDTO.roomCode}<br> Created:
									${bookingDTO.checkInDate}<br>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td>Homie Hotel, Inc.<br> Phone: 0977525030<br>
									Address: 273 Nguyen Gia Tri, Ward 25,<br> Binh Thanh,
									City. Ho Chi Minh
								</td>

								<td>Dear: ${bookingDTO.name}.<br> Phone:
									${bookingDTO.phoneNumber}<br> Email:${bookingDTO.email}
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="heading">
					<td>Payment Method</td>

					<td>Money #</td>
				</tr>

				<tr class="details">
					<td>Price Room</td>

					<td>${phong.giaPhong}$</td>
				</tr>

				<tr class="heading">
					<td>Item</td>

					<td>Check</td>
				</tr>


				<tr class="item">
					<td>Room Number</td>

					<td>${phong.soPhong}</td>
				</tr>

				<tr class="item">
					<td>Room Type</td>

					<td>${phong.loaiPhong.tenLoaiPhong}</td>
				</tr>

				<tr class="item">
					<td>Check-in Date</td>

					<td>${bookingDTO.checkInDate}</td>
				</tr>

				<tr class="item last">
					<td>Check-out Date</td>

					<td>${bookingDTO.checkOutDate}</td>
				</tr>
				<tr class="item last">
					<td>QR</td>

					<td><img
						src="${pageContext.request.contextPath}/qrcode/${bookingDTO.name}"
						width="100" height="100"></td>
				</tr>
			</table>
		</div>

	</form>

	<div class="container" align="center">
		<a style="color: red" href="home">GO HOME</a>
	</div>

</body>
</html>
