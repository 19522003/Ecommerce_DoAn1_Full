<style>
.footer__contact {
	background-color: #f2cfb0;
	height: 80px;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	padding: 0 40px;
	align-items: center;
}

.footer__contact ul {
	padding: 0;
	margin: 0;
	display: flex;
	align-items: center;
}

.footer__contact ul li {
	list-style: none;
}

.footer__contact-info li {
	padding: 0 10px;
}

.footer__contact-info li a {
	font-weight: 500;
	font-size: 1.1rem;
	color: white;
}

.footer__contact-info li a:hover {
	text-decoration: none;
}

.footer__contact-social img {
	height: 35px;
	width: 35px;
	margin: 0 15px;
}

.footer__contact-social button {
	outline: none;
	border: none;
	padding: 5px 10px;
	border-radius: 5px;
	margin-right: 30px;
	font-weight: 500;
}

.footer__more {
	display: flex;
	justify-content: space-between;
	padding: 40px;
	flex-wrap: wrap;
	background-color: white;
}

.footer__more h3 {
	font-size: 1.2rem;
	padding-bottom: 20px;
}

.footer__more ul {
	padding: 0;
	margin: 0;
}

.footer__more ul li {
	list-style: none;
}

.footer__more ul li a {
	color: #0d47a1;
	font-size: 1rem;
	text-align: left;
}

.footer__more ul li a:hover {
	text-decoration: none;
	color: #28bef3;
}

.footer__more-company {
	flex: 2;
	padding: 0 10px;
	margin-bottom: 20px;
}

.footer__more-popular {
	flex: 3;
	padding: 0 10px;
	min-width: 40%;
	margin-bottom: 20px;
}

.footer__more-new {
	flex: 4;
}

.footer__more-new form {
	display: flex;
	flex-direction: column;
}

.footer__more-new form input, .footer__more-new form textarea {
	height: 40px;
	background-color: #dadada;
	border: none;
	outline: none;
	margin: 5px;
	padding: 5px 20px;
	border-radius: 5px;
	color: #797979;
}

.footer__more-new form textarea {
	height: 60px;
}

.footer__more-new form button {
	width: 150px;
	padding: 3px;
	background-color: #28bef3;
	color: white;
	border: none;
	outline: none;
	border-radius: 5px;
	margin-top: 20px;
	margin-left: auto;
	margin-right: 0;
}

.footer__more-new form button:hover {
	opacity: 0.8;
}

.footer__payment {
	position: relative;
	color: white;
	padding: 20px 0;
	background: #323232;
}

.footer__payment::before {
	content: url(../img/shadow.png);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.footer__payment h3 {
	font-size: 1.1rem;
	padding-bottom: 10px;
	padding-left: 40px;
}

.footer__payment-wrapper {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	padding: 0px 40px 10px 40px;
}

.footer__payment-pay {
	display: flex;
	align-items: center;
	z-index: 1;
}

.footer__payment-pay li {
	padding-right: 20px;
	list-style: none;
}

.footer__payment-company {
	display: flex;
	align-items: center;
	z-index: 1;
}

.footer__payment-company li {
	padding: 0 10px;
	list-style: none;
}

.footer__payment-company li a {
	font-size: 0.8rem;
	color: #28bef3;
}

.footer__payment-company li a:hover {
	text-decoration: none;
}

.footer__payment-contact {
	padding: 20px 40px;
	border-top: 1px solid #999;
	font-size: 0.7rem;
	display: flex;
	justify-content: space-between;
}

.footer__payment-contact__location {
	padding-right: 20px;
	flex: 4;
}

.footer__payment-contact__email {
	padding-right: 20px;
	flex: 3;
}

.footer__payment-contact__phone {
	padding-right: 20px;
	flex: 3;
}

.footer-button {
	color: white;
	padding: 10px 20px;
	font-size: 0.9rem;
	border-radius: 5px;
	cursor: pointer;
	background-color: #ef801d;
}

.footer-button:hover {
	opacity: 0.8;
}

.footer-button ion-icon {
	pointer-events: none;
	font-size: 0.7rem;
	font-weight: 800;
	margin-right: 10px;
}

/*Footer End*/
</style>
<%@page import="com.entity.User"%>
<%
User c = (User) session.getAttribute("userobj");
%>
<footer class="footer" style="margin-top: 30px">
	<div class="footer__contact">
		<div class="footer__contact-info"></div>
		<div class="footer__contact-social">
			<ul>
				<li><button>Follow Us</button></li>
				<li><a href="#"> <img src="img/facebook.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/twitter.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/google.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/pinterest.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/instagram.png" alt="" />
				</a></li>
			</ul>
		</div>
	</div>
	<div class="footer__more">
		<div class="footer__more-company">
			<h3>PRODUCTS</h3>
			<ul>
				<li><a href="all_new_products.jsp">New</a></li>
				<li><a href="all_old_products.jsp">Old</a></li>
				<li><a href="all_recent_products.jsp">Recent</a></li>
			</ul>
		</div>
		<div class="footer__more-popular">
			<h3>Link</h3>
			<ul>
				<li><a href="#">Home page</a></li>
				<li><a href="#">Search</a></li>
				<li><a href="#">Product</a></li>
			</ul>
		</div>

		<div class="footer__more-new">
			<form action="post">
				<%
				if (c == null) {
				%>
				<h3>NEW & UPDATE</h3>
				<p>Sign up to receives news and updates from website</p>
				<%
				}
				%>

			</form>
		</div>
	</div>
	<div class="footer__payment">
		<h3>PAYMENT</h3>
		<div class="footer__payment-wrapper">
			<ul class="footer__payment-pay">
				<li><a href="#"> <img src="img/visa.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/mastercard.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/paypal.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/footer4.png" alt="" />
				</a></li>
				<li><a href="#"> <img src="img/footer5.png" alt="" />
				</a></li>
			</ul>
			<ul class="footer__payment-company">
				<li><a href="#">About Us</a></li>
				<li><a href="#" style="pointer-events: none;">Term and
						Conditions</a></li>
			</ul>
		</div>
		<div class="footer__payment-contact">
			<div class="footer__payment-contact__location">
				All rights reserved <br /> Headquarter: UIT, Linh Trung, Thu Duc,
				TP Ho Chi Minh
			</div>
			<div class="footer__payment-contact__email">Contact:
				phatviet@gmail.com</div>
			<div class="footer__payment-contact__phone">Tel: (+84) 012 345
				6789</div>
		</div>
	</div>
</footer>