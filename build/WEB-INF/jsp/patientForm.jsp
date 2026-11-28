<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Formulaire d'insertion patient</h1>
    <form action="${pageContext.request.contextPath}/register" method="post">
        <label for="nom">Nom:</label>
        <input type="text" id="nom" name="nom" required><br><br>
        <label for="prenom">Prenom:</label>
        <input type="text" id="prenom" name="prenom" required><br><br>
        <label for="dateDeNaissance">Date de naissance:</label>
        <input type="date" id="dateDeNaissance" name="dateDeNaissance" required><br><br>
        <label for="lieuDeNaissance">Lieu de naissance:</label>
        <input type="text" id="lieuDeNaissance" name="lieuDeNaissance" required><br><br>
        <label for="idSexe">Sexe:</label>
        <select id="idSexe" name="patient.sexe.id" required>
            <option value="">Sélectionnez un sexe</option>
            <c:forEach var="s" items="${sexe}">
                <option value="${s.id}">${s.libelle}</option>
            </c:forEach>
        </select><br><br>
        <label for="nationalite">Nationalité:</label>
        <input type="text" id="nationalite" name="nationalite" required><br><br>
        <label for="telephone">Téléphone:</label>
        <input type="text" id="telephone" name="telephone" required><br><br>
         <label for="adresse">Adresse:</label>
        <input type="text" id="adresse" name="adresse" required><br><br>

        <input type="submit" value="Enregistrer">
    </form>
    <%  if(request.getAttribute("message") != null) { %>
        <p style="color: green;"><%= request.getAttribute("message") %></p>
    <% } %>
    <%  if(request.getAttribute("erreur") != null) { %>
        <p style="color: red;"><%= request.getAttribute("erreur") %></p>
    <% } %>

</body>
</html>