<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 14/05/2025
  Time: 02:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Thêm/Sửa Sản phẩm</title></head>
<body>
<h2>${product.id == 0 ? "Thêm sản phẩm" : "Chỉnh sửa sản phẩm"}</h2>
<form action="${product.id == 0 ? 'b9/products/save' : 'b9/products/update'}" method="post">
  <input type="hidden" name="id" value="${product.id}"/>
  Tên: <input type="text" name="name" value="${product.name}"/><br/>
  Giá: <input type="text" name="price" value="${product.price}"/><br/>
  Danh mục:
  <select name="categoryId">
    <c:forEach var="c" items="${categories}">
      <option value="${c.id}" ${c.id == product.categoryId ? 'selected' : ''}>${c.name}</option>
    </c:forEach>
  </select><br/>
  <button type="submit">Lưu</button>
</form>
<a href="b9/products">Quay lại</a>
</body>
</html>
