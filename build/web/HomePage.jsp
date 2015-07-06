<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="DatabaseClass.WorkSpace"%>
<%@page import="mypkg.servlets.GetFiles"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="includeCss.html"%>
<script src="js/jquery-1.11.3.min.js"></script>
<!--script type="text/javascript" src="js/ui.tabs.closable.min.js"></script-->
</head>
<body>
	<%@include file="developerHeader.jsp"%>
	<div class="story-container-inner" style="margin: 15px; width: 90%;">
		<%--
			if (request.getAttribute("wList") != null) {
				ArrayList<WorkSpace> wList = (ArrayList<WorkSpace>) request.getAttribute("wList");
		--%>
		<!-- ******BLOG LIST****** -->
		<div class="blog container">
			<div class="row">
				<div id="blog-mansonry" class="blog-list">
					<div
						style="border: #bfbfbf ridge medium; width: 25%; margin: 5px; float: left; display: inline; height: 589px; overflow: scroll">
						<div class="panel panel-default"
							style="width: 100%; margin-bottom: 0px;">
							<div class="panel-heading">Projects</div>
							<!-- /.panel-heading -->
							<div id="projects" class="panel-body">
								<%--
									for (int i = 0; i < wList.size(); i++) {
											WorkSpace ws = wList.get(i);
								--%>
                                                                <%!int i=0;%>
                                                                <c:forEach items="${wList}" var="wdata">
								<div class="panel" style="margin-bottom: 0px">
									<div class='panel-heading'>
										<h4 class='panel-title'>
											<a id='project<%=i%>'
												onclick='getFiles(<%=i%>,${wdata.w_Id})'
												style='text-decoration: none' data-parent='#accordion'
												data-toggle='collapse' class='panel-toggle collapsed'
												href='#faq<%=i%>' aria-expanded='false'> <i id="icon"
												class="fa fa-folder-o"></i> ${wdata.w_Path}
											</a>
										</h4>
									</div>

									<div class="panel-collapse collapse" id="faq<%=i%>"
										aria-expanded="false" style="height: 0px;">
										<div class="panel-body">
											<a id="file0" href="OpenFile.do?id=0"><i
												class="fa fa-file-o"></i> No File</a>
										</div>
									</div>
                                                                        <%i++;%>
								</div>
                                                                </c:forEach>
								<%--
									}
								--%>
								<!-- /.panel-body -->
							</div>
						</div>
					</div>
					<!--//blog-list-->
				</div>
				<%--
					}
				--%>
				<!--//about-->
				<div
					style="border: #bfbfbf ridge medium; width: 73%; margin: 5px; float: left; display: inline">
					<div class="panel panel-default"
						style="width: 100%; margin-bottom: 0px; background-color: cadetblue">
						<form id="form" role="form" method="post" action="#">
							<div class="panel-heading"
								style="padding: 0px; background-color: whitesmoke">
								<div class="navbar-collapse collapse">
									<ul class="nav navbar-nav">
										<li><a type="submit" id="save" href="#"
											style="padding-top: 10px; padding-bottom: 5px; margin-right: 30px;">Save</a></li>
										<!--li><a type="submit" id="compile" href="#"
											style="padding-top: 10px; padding-bottom: 5px; margin-right: 30px;">Compile</a></li-->
										<li><a type="submit" id="run" href="#"
											style="padding-top: 10px; padding-bottom: 5px; margin-right: 30px;">Run</a></li>
										<!--li><a type="submit" id="split" href="#"
											style="padding-top: 10px; padding-bottom: 5px; margin-right: 30px;">Split
												View</a></li-->
									</ul>
								</div>
							</div>
							<!-- /.panel-heading -->
							<div id="tabhead" class="panel-body" style="padding: 0px">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" style="border-bottom: 1px solid #ddd">
									<li class="active" id="li1">
                                                                            <a href="#home1" class="textab" id="homeNav1" data-toggle="tab" style="padding: 10px 15px">Home</a>
									</li>
									<!--li><a href="#profile" data-toggle="tab" style="padding: 10px 15px">Profile</a>
                                                                        </li-->
								</ul>

								<!-- Tab panes -->
								<div id="tabcontent" class="tab-content">
									<div class="tab-pane fade in active" id="home1">
                                                                            <textarea id="editor1" disabled class="form-control" name="editor"
											placeholder="Open a File or Create new File to edit here" spellcheck="true"
											style="height: 500px; overflow: scroll; tab-size: 6;"></textarea>
									</div>
									<!--div class="tab-pane fade" id="profile">
                                    <textarea id="editor" class="form-control" name="editor" placeholder="Put Your Code Here" spellcheck="true" style="height: 500px; overflow: scroll; tab-size: 6;"></textarea>
                                </div-->
								</div>
							</div>



							<!--input type="text" hidden="true" id="hiddenText"-->


							<!-- /.panel-body -->
                                                        <!--textarea id="output" rows="10" cols="100"></textarea-->
                                                        <div class="form-group">
                                                            <select id="options" multiple class="form-control">
                                                            </select>
                                                        </div>
						</form>
					</div>
				</div>
			</div>

			<!--div class="row" style="border: #bfbfbf ridge medium; height: 500px; margin-bottom: 10px">
                        <div class="panel panel-default" style="width: 100%;margin-bottom: 0px;">
                            <div class="panel-heading">
                                Output
                            </div>
                            <div class="panel-body" style='padding: 0px'>
                                <iframe id='iFrame' src="" style='height: 445px; width: 100%'></iframe>
                            </div>
                        </div>
                    </div-->
		</div>
		<!--//container-->
	</div>
	<script>    
            var current_idx=1;
            function getFiles(i,wId)
            {
                var xmlHttp=new XMLHttpRequest();
               
                xmlHttp.open("GET", "GetFiles.do?wId="+wId, true);
                xmlHttp.send();
                var faq = "faq"+i;
            
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                        document.getElementById(faq).innerHTML=xmlHttp.responseText;
                    }
                };
            }
            function OpenFile(id)
            {
                var xmlHttp=new XMLHttpRequest();
                xmlHttp.open("GET", "OpenFile.do?id="+id, true);
                xmlHttp.send();
                
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                        if(document.getElementById("homeNav1").innerHTML=='Home')
                        {
                            document.getElementById("editor1").innerHTML=xmlHttp.responseText;
                            document.getElementById("editor1").removeAttribute("disabled");
                            document.getElementById("save").setAttribute("onclick","SaveFile("+id+",1)");
                            document.getElementById("run").setAttribute("onclick","RunFile("+id+",1)");
                            document.getElementById("homeNav1").innerHTML=document.getElementById("file"+id).innerHTML+"<button type='button' class='close' data-dismiss='nav' onclick='removeTab("+current_idx+")' aria-hidden='true'>×</button>";
                            document.getElementById("homeNav1").setAttribute("onclick","setSaveRun("+id+","+current_idx+")");
                            addTab();
                            //callFun("editor1");
                            //$(document).ready(start("editor1"));
                        }
                        else
                        {
                            var tabs = $("#tabhead");
                            var ul = tabs.find( "ul" );
                            //var current_idx = ul.find("li").length + 1;// Get correct index for id
                            current_idx++;
                            var fileName = document.getElementById("file"+id).innerHTML;
                            $("<li id='li"+current_idx+"'><a href='#home" + current_idx + "' class='textab' id='homeNav"+current_idx+"' data-toggle='tab' onclick='setSaveRun("+id+","+current_idx+")' style='padding: 10px 15px'>"+fileName+"<button type='button' class='close' data-dismiss='nav' onclick='removeTab("+current_idx+")' aria-hidden='true'>×</button></a></li>" ).appendTo( ul );
                            //ul.find("li").addClass('active').siblings().removeClass('active');
                            var div = tabs.children("div");
                            var editorId = "editor"+current_idx;
                            $("<div class='tab-pane fade in active' id='home"+current_idx+"'><textarea id='"+editorId+"' class='form-control' name='editor' placeholder='Put Your Code Here' spellcheck='true' style='height: 500px; overflow: scroll; tab-size: 6;'>"+xmlHttp.responseText+"</textarea></div>" ).appendTo( div );
                            document.getElementById("homeNav"+current_idx).click();
                            addTab();
                            //callFun(editorId);
                            //$(document).ready(start(editorId));
                            
                            //tabs.tabs("refresh");
                            //tabs.tabs("select", current_idx);
                        }
                    }
                };
            }
            
            function addTab()
            {
                var textareas = document.getElementsByTagName('textarea');
                var count = textareas.length;
                for(var i=0;i<count;i++)
                {
                    textareas[i].onkeydown = function(e)
                    {
                        if(e.keyCode==9 || e.which==9)
                        {
                            e.preventDefault();
                            var s = this.selectionStart;
                            this.value = this.value.substring(0,this.selectionStart) + "\t" + this.value.substring(this.selectionEnd);
                            this.selectionEnd = s+1; 
                        }
                    }
                }
            }   
            
            function removeTab(idx)
            {
                /*var elem = document.getElementById("homeNav"+idx);
                elem.parentNode.removeChild(elem);
                elem = document.getElementById("editor"+idx);
                elem.parentNode.removeChild(elem);*/
                $('#li'+idx).remove();
                $('#editor'+idx).remove();
                idx++;
                $('#homeNav'+idx).click();
            }
            
            function setSaveRun(id,index)
            {
                document.getElementById("save").setAttribute("onclick","SaveFile("+id+","+index+")");
                document.getElementById("run").setAttribute("onclick","RunFile("+id+","+index+")");
                //callFun("editor"+index);
                //$(document).ready(start('editor'+index));
            }
            
            function SaveFile(id,index)
            {
                var xmlHttp=new XMLHttpRequest();
                
                var textarea = document.getElementById("editor"+index).value;
                
                var stripped = textarea.replace(new RegExp( "\\n", "g" ),"...\/\/\/\/");
                xmlHttp.open("GET", "SaveFile.do?id="+id+"&editor="+stripped, true);
                //var parameters = "editor="+textarea+"&id="+id;
                //xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                //xmlhttp.setRequestHeader("Content-length", parameters.length);
                //xmlhttp.setRequestHeader("Connection", "close");
                xmlHttp.send();
                
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                        alert("Saved Successfully..:-))");
                    }
                };
            }
            function RunFile(id,index)
            {
                var xmlHttp=new XMLHttpRequest();
                var textarea = document.getElementById("editor"+index).value;
                var stripped = textarea.replace(new RegExp( "\\n", "g" ),"...\/\/\/\/");
                xmlHttp.open("GET", "RunFile.do?id="+id+"&editor="+stripped, true);
                xmlHttp.send();
                
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                        //alert(xmlHttp.responseText);
                        window.open(xmlHttp.responseText,"_blank");
                    }
                };
            }
            /*function getProjects()
            {
                var xmlHttp=new XMLHttpRequest();
                alert("HEy");
                xmlHttp.open("GET", "GetProjects.do?id=home", true);
                xmlHttp.send();
            
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4 && xmlHttp.status==200)
                    {
                        alert("HEy");
                        document.getElementById("projects").innerHTML=xmlHttp.responseText;
                    }
                };
            }*/
    
            $(document).ready(function (){     //need output
                    $("#editor1").keyup(function()
                    {   //alert(document.activeElement);
                        //alert("this "+this);
                        var textbox = $(this);
                        //alert("textbox "+textbox);
                        var end = textbox.selectionStart;
                        //alert(end);
                        var result = /\S+$/.exec(this.value.slice(0, end));
                        //alert("result "+result);
                        var lastWord = result ? result[0] : null;
                        //alert(lastWord);
                        if(lastWord.length>2)
                        {
                            var xmlHttp = new XMLHttpRequest();
                            xmlHttp.open("GET","ShowFunction.do?string="+lastWord,true);
                            xmlHttp.send(); 
                            xmlHttp.onreadystatechange=function()
                            {   //alert("Hey");
                                if(xmlHttp.readyState==4 && xmlHttp.status==200)
                                {   
                                    document.getElementById("options").innerHTML=xmlHttp.responseText;
                                }
                            }
                        }
                    //jQuery("#txt").val(textAreaTxt.substring(0, caretPos) + txtToAdd + textAreaTxt.substring(caretPos) );
                    });
            });
            
            /*$(document).on("click", "a.textab" , function() 
            {
                alert("textab");
                start(this.id);
            });*/
            
            function writeFun(id)       //need output
            {
                var str = document.getElementById(id).value;
                
                var output = $('#editor1');
                /*var end = output.selectionStart;
                alert("end = "+end);
                var result = /\S+$/.exec($('#output').value.slice(0, end));
                alert("result = "+result);
                var word = result ? result[0] : null;
                alert("word + "+word);*/
                var word = getLast(output.val());
                var translatedWord = $.trim(str);
                translatedWord = translatedWord.substring(word.length, translatedWord.length);
                
                var cursorPos = $('#editor1').prop('selectionStart'),
                v = $('#editor1').val(),
                textBefore = v.substring(0, cursorPos ),
                textAfter  = v.substring(cursorPos, v.length);
                $('#editor1').val( textBefore+ translatedWord + textAfter );
                
                //string = string.replace(word, translatedWord);
                //output.val(string);
            }
            function getLast(o) //returns last word in textarea
            {
                return ("" + o).replace(/[\s-]+$/, '').split(/[\s-]/).pop();
            }
        </script>
	<%@include file="footer.html"%>
</body>
</html>