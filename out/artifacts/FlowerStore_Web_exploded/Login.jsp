<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@  page  session="false"  %>
 <%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%> 
<!DOCTYPE HTML>
<html lang="zxx">



<head>
<base href="<%=basePath%>">
	<title>登陆</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Classic Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
	<%--<link rel="stylesheet" href="/css/style01.css">--%>
</head>


<body>

<%--<div class="camera -x">
	<div class="camera -y">
		<div class="camera -z">
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="drop">
				<div class="z">
					<div class="slide">
						<div class="move">
							<div class="stagger">
								<div class="reverse">
									<div class="rotate">
										<div class="size">
											<div class="sakura"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>--%>

<%--获取cookie中的用户名和密码 --%>
<%
String username="";
String password="";
//清空cookie的已有的用户名和密码
  Cookie[] cookies= request.getCookies();
     if(cookies!=null)
    	 for(Cookie cookie:cookies){
    		if("COOKIE_username".equals(cookie.getName())){
    			username=cookie.getValue();
    		}
    		if("COOKIE_password".equals(cookie.getName())){
   			 password=cookie.getValue();
    		}
    	 }
%>
	<!--header-->
	<h1>
		<span>用户登录</span>
	<!--//header-->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form action="LoginServlet" method="post">
				<div class="form-style-agile">
					<label>用户名</label>
					<div class="pom-agile">
						<input placeholder="请输入用户名" value="<%=username%>" name="username" type="text" required="">
					</div>
				</div>
				<div class="form-style-agile">
					<label>密码</label>
					<div class="pom-agile">
						<input placeholder="请输入密码"  value="<%=password%>" name="password" type="password" id="password1" required="">
					</div>
				</div>
				<div class="sub-agile">
					<label ><input type="checkbox" name="rememberMe" value="true" style="width: 20px;height:20px">记住密码</label>
				</div>
				<input type="submit" value="Login">
			</form>
		</div>
	</div>
	<!-- //content -->


	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->
</body>

</html>