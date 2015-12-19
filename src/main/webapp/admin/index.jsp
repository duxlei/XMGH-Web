<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>管理首页 | 小马过河后台管理</title>
    <link type="text/css" rel="stylesheet" href="resource/css/framework.css" />
    <link type="text/css" rel="stylesheet" href="resource/css/main.css" />
</head>
<body>
<div class="page">

	<c:import url="head.jsp"></c:import>

	<!--the main content begin-->
	<div class="container">
	<!--the content-->
		<div class="pageHeader">
			<div class="segment">
				<h3 class="ui dividing header">
  					<i class="large home icon"></i>
  					<div class="content">
    					管理首页
    				<div class="sub header">快速查看和编辑</div>
  					</div>
				</h3>
			</div>
		</div>
        <div class="ui warning message">
            	<i class="close icon" data-dismiss="alert"></i>
            <div class="header">
            	<i class="warning icon"></i> 当前帐户还未激活.
            </div>
            未激活账户无法使用Yeelink服务，请检查注册时填写的邮箱，完成验证。
            <a href="http://www.yeelink.net/login/resend_activate_mail" title="重新发送激活邮件">未收到激活邮件？</a>
        </div>
		<div class="ui small message" id="showApiKey">
		   <div class="ui form segment">
				<div class="inline field">
					<label>您的API Key :</label>
					<div class="ui small left icon input short">
						<i class="key icon"></i>
						<input type="text" value="793jIEGJjkjkljfUI3JRTJOIO" readonly="readonly" id="apiKey">
					</div>
					<a class="ui mini green button" id="copy-apiKey" href="#">复制</a>
					<a class="ui mini blue animated button" href=apikey_manage.jsp>
						<span class="visible content">管理</span>
						<span class="hidden content">
							<i class="key icon"></i>
						</span>
					</a>
					<a id="deviceQuickButton" class="ui red small labeled icon button" href="devices_list.jsp">
						<i class="settings icon"></i>管理所有设备
					</a>
				</div>
		  </div>
		</div>
		<!--device list-->
		<div class="ui three column grid" id="indexList">
			<div class="row">
				<div class="column">
					<div class="ui blue segment">
						<a href="device.jsp" class="content">
							<h4 class="deviceName">设备名01</h4>
							<p class="deviceId">设备ID：234</p>
							<p class="deviceDescription">这里是设备描述。</p>
							<p class="sensorStatus">传感器状态：
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui red error label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
							</p>
						</a>
					</div>
				</div>
				<div class="column">
					<div class="ui blue segment">
						<a class="content" href="#">
							<h4 class="deviceName">设备名02</h4>
							<p class="deviceId">设备ID：4354</p>
							<p class="deviceDescription">这里是设备描述。</p>
							<p class="sensorStatus">传感器状态：
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
							</p>
						</a>
					</div>
				</div>
				<div class="column">
					<div class="ui blue segment">
						<a class="content" href="#">
							<h4 class="deviceName">设备名03</h4>
							<p class="deviceId">设备ID：344</p>
							<p class="deviceDescription">这里是设备描述。</p>
							<p class="sensorStatus">传感器状态：
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
								<span class="ui green ok label" ></span>
							</p>
						</a>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="column">
					<div class="ui blue segment">
						<a class="content" href="add.jsp">
							<h4 class="newDevice"><i class="huge add icon"></i>
							添加新设备</h4>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script>
	/*$(document).ready(function(){
		$('a#copy-apiKey').zclip({
			path:'resource/javascript/ZeroClipboard.swf',
			copy:function(){return $('input#apiKey').val();}
		});

		$('.ui.dropdown')
			.dropdown();
	});*/
</script>
</body>
</html>
