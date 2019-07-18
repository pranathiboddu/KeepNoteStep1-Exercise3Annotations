

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>

<style>
table {
  border-collapse: collapse;
  width : 100%;
}
table, th, td {
  border: 1px solid black;
}
</style>

</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
		 button. Handle errors like empty fields -->

		 <form action = "saveNote">

                 <input type = "text" name = "noteId" placeholder = "noteId"/><br><br>
                 <input type = "text" name = "noteTitle" placeholder = "noteTitle"/><br><br>
                 <input type = "text" name = "noteContent" placeholder = "noteContent"/><br><br>
                 <input type = "text" name = "noteStatus" placeholder = "noteStatus"/><br><br>
                 <input type = "submit" name = "submit"/>
               </form>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
    <br>
    <br>
    <!--provide an html table start tag -->
         <table style="border: 1px solid; ">
         <tr>
             <th>Id</th>
             <th>Title</th>
             <th>Content</th>
             <th>Status</th>
             <th>Created At</th>
             <th> </th>
           </tr>
         <!-- iterate over the collection using forEach loop -->
         <c:forEach var="user" items="${users}">
             <!-- create an html table row -->
             <tr>
             <!-- create cells of row -->
             <td>${user.noteId}</td>
             <td>${user.noteTitle}</td>
             <td>${user.noteContent}</td>
             <td>${user.noteStatus}</td>
             <td>${user.createdAt}</td>
             <td><form action = "deleteNote">
                 <button type = "submit" name = "noteId" value = "${user.noteId}">DELETE</button>
                 </form>
                 </td>
             <!-- close row -->
             </tr>
             <!-- close the loop -->
         </c:forEach>
         <!-- close table -->
         </table>
</body>
</html>
