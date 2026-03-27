<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>
<html>
<head>
<title>System Information</title>
</head>
<body>
<h1>System Information</h1>
<h2>Environment Variables</h2>
<ul>
<% 
            foreach (System.Collections.DictionaryEntry variable in Environment.GetEnvironmentVariables())
            {
                Response.Write($"<li><strong>{variable.Key}</strong>: {variable.Value}</li>");
            }
        %>
</ul>
 
    <h2>Current Directory</h2>
<p>
<% 
            string currentDir = Directory.GetCurrentDirectory();
            Response.Write(Server.HtmlEncode(currentDir));
        %>
</p>
 
    <h2>Current User</h2>
<p>
<% 
            string currentUser = Environment.UserName;
            Response.Write(Server.HtmlEncode(currentUser));
        %>
</p>
</body>
</html>