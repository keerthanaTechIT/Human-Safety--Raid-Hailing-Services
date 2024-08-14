<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dbcon.Dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
.table-scroll {
	position: relative;
	max-width: 900px;
	overflow: hidden;
	border: 1px solid #000;
}

.table-wrap {
	width: 100%;
	overflow: auto;
}

.table-scroll table {
	width: 100%;
	margin: auto;
	border-collapse: separate;
	border-spacing: 0;
}

.table-scroll th, .table-scroll td {
	padding: 5px 10px;
	border: 1px solid #000;
	white-space: nowrap;
	vertical-align: top;
}

.table-scroll thead, .table-scroll tfoot {
	background: #f9f9f9;
}

.clone {
	position: absolute;
	top: 0;
	left: 0;
	pointer-events: none;
}

.clone th, .clone td {
	visibility: hidden;
}

.clone td, .clone th {
	border-color: transparent;
}

.clone tbody th {
	visibility: visible;
	color: red;
}

.clone th.fixed-side {
	border: 1px solid #000;
	background: #eee;
	visibility: visible;
}

.clone tr:hover th.fixed-side {
	background: pink;
}

.clone thead, .clone tfoot {
	background: transparent;
}

/*hover colors for indication*/
table.main-table td, table.main-table th {
	position: relative;
}

table.main-table tbody tr:hover {
	background-color: pink;
}

table.main-table td:hover::after, table.main-table thead th:not (:empty
	):hover::after, table.main-table td:focus::after, table.main-table thead th:not
	(:empty ):focus::after {
	content: '';
	height: 5000px;
	left: 0;
	position: absolute;
	top: -5000px;
	width: 100%;
	z-index: -1;
}

table.main-table td:hover::after, table.main-table th:hover::after {
	background-color: pink;
}

table.main-table td:focus::after, table.main-table th:focus::after {
	background-color: lightblue;
}
</style>
</head>
<body>
	<h1> Driver Data base</h1>
<!-- 	Done:
	<ul>
		<li>Fixed first column</li>
		<li>Horizontal scrolling</li>
		<li>Row and column highlighting on hover</li>
	</ul>
	Ongoing:
	<ul>
		<li>Filtering table multiple columns for example name AND movie
			(still has errors)</li>
	</ul> -->
	<div id="table-scroll" class="table-scroll">
		<div class="table-wrap">
			<table class="main-table">
				<thead>
					<tr>
						<th class="fixed-side" scope="col">No</th>
						<th scope="col">Photo<br /></th>
						<th scope="col">Name<br /></th>
						<th scope="col">Email<br /></th>
						<th scope="col">Gender<br /></th>
						<th scope="col">Village<br /></th>
						<th scope="col">City<br /></th>
						<th scope="col">Status<br /></th>
					</tr>
				</thead>



				<%
					Connection con;

					con = Dbcon.create();
					PreparedStatement ps = con.prepareStatement(
							"SELECT * FROM `humansecurity`.`driverapplication` where status IN('Accept')  ");

					ResultSet rs = ps.executeQuery();

					while (rs.next()) {
				%>






				<tbody>
					<tr>
						<th class="fixed-side"><%=rs.getString(1)%></th>
						<td><img src="Locals/<%=rs.getString(8)%>" alt="" width="70"
						height="80"></td>
						<th><%=rs.getString(2)%></th>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(9)%></td>
						<%-- <td>
							<button type="button" class="btn btn-primary">
								<a
									href="update.jsp?data=<%="Accept"%>&&id=<%=rs.getString(1)%> ">Accept</a>
							</button>
							<button type="button" class="btn btn-danger">
								<a
									href="update.jsp?data=<%="reject"%>&&id=<%=rs.getString(1)%> ">Reject
							</button>
						</td> --%>
					</tr>

				</tbody>
				<%
					}
				%>

			</table>
		</div>
	</div>
	<script>
		//jquery yayyyy~~~~~~
		//hi bob!, how are you :p

		$(document).ready(function() {
			//create the first fixed column
			firstFixedColumn();
			//Row and column highlighting on hover
			rowAndColumnHighlight();
			//source: https://www.jqueryscript.net/table/jQuery-Plugin-To-Filter-Html-Table-with-Multiple-Criteria-multifilter.html
			$('.filter').multifilter();
		});

		function firstFixedColumn() {
			$('.main-table').clone(true).appendTo('#table-scroll').addClass(
					'clone');
		}

		function rowAndColumnHighlight() {
			$('.main-table td, .main-table th').attr("tabindex", "1").on(
					"touchstart", function() {
						$(this).focus();
					});
		}

		(function($) {
			"use strict";
			$.fn.multifilter = function(options) {
				var settings = $.extend({
					'target' : $('table'),
					'method' : 'thead' // This can be thead or class
				}, options);

				jQuery.expr[":"].Contains = function(a, i, m) {
					return (a.textContent || a.innerText || "").toUpperCase()
							.indexOf(m[3].toUpperCase()) >= 0;
				};

				this
						.each(function() {
							var $this = $(this);
							var container = settings.target;
							var row_tag = 'tr';
							var item_tag = 'td';
							var rows = container.find($(row_tag));

							if (settings.method === 'thead') {
								// Match the data-col attribute to the text in the thead
								var col = container.find('th:Contains('
										+ $this.data('col') + ')');
								var col_index = container.find($('thead th'))
										.index(col);
							}
							;

							if (settings.method === 'class') {
								// Match the data-col attribute to the class on each column
								var col = rows.first().find(
										'td.' + $this.data('col') + '');
								var col_index = rows.first().find('td').index(
										col);
							}
							;

							$this
									.change(
											function() {
												var filter = $this.val();
												rows
														.each(function() {
															var row = $(this);
															var cell = $(row
																	.children(item_tag)[col_index]);
															if (filter) {
																if (cell
																		.text()
																		.toLowerCase()
																		.indexOf(
																				filter
																						.toLowerCase()) !== -1) {
																	cell
																			.attr(
																					'data-filtered',
																					'positive');
																} else {
																	cell
																			.attr(
																					'data-filtered',
																					'negative');
																}
																if (row
																		.find(
																				item_tag
																						+ "[data-filtered=negative]")
																		.size() > 0) {
																	row.hide();
																} else {
																	if (row
																			.find(
																					item_tag
																							+ "[data-filtered=positive]")
																			.size() > 0) {
																		row
																				.show();
																	}
																}
															} else {
																cell
																		.attr(
																				'data-filtered',
																				'positive');
																if (row
																		.find(
																				item_tag
																						+ "[data-filtered=negative]")
																		.size() > 0) {
																	row.hide();
																} else {
																	if (row
																			.find(
																					item_tag
																							+ "[data-filtered=positive]")
																			.size() > 0) {
																		row
																				.show();
																	}
																}
															}
														});
												return false;
											}).keyup(function() {
										$this.change();
										console.log('test hi!');
									});
						});
			};
		})(jQuery);
	</script>
</body>
</html>