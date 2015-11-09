<%--
  Created by IntelliJ IDEA.
  User: santiago
  Date: 11/7/15
  Time: 9:51 PM
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<%@ defaultCodec="none" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script src="courseboard/courseboard.js"></script>
    <asset:javascript src="jquery-2.1.3.js"/>
    <asset:javascript src="foundation/jquery-ui/jquery-ui.js"/>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="schedule.css"/>
    <asset:stylesheet src="foundation/jquery-ui/jquery-ui.css"/>
    <asset:javascript src="courseboard/courseboard.js"/>
    <script>

    </script>


    <title>Creación de horarios</title>
</head>


<body>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="navbar-header page-scroll">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand page-scroll" href="home">UNCake</a>
    </div>
</nav>


<div class="column filter">

    <label for="loc">Sede:</label>

    <div class="ui-widget">
        <input id="loc">
    </div>

    <label for="menuTypePlan">Tipo:</label>

    <div>
        <select name="menuTypePlan" id="menuTypePlan">
            <option value="PRE" selected="selected">Pregrado</option>
            <option value="POS">Posgrado</option>
        </select>
    </div>

    <label for="plans">Planes:</label>

    <div class="ui-widget">
        <input id="plans">
    </div>


    <label for="menuType">Tipología:</label>

    <div>
        <select name="menuType" id="menuType">
        </select>
    </div>

    <label for="course">Materia:</label>

    <div class="ui-widget">
        <input id="course">
    </div>

    <div class="selectablemenu">
        <ol class="selectableItem" id="selectable">
        </ol>
    </div>

</div>

<div>
    <iframe src="coursedata.gsp">
        
    </iframe>
</div>

</body>
</html>