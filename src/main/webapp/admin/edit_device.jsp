<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>编辑设备 | Yeelink用户中心</title>
    <link type="text/css" rel="stylesheet" href="resource/css/jquery.tagsinput.css" />
    <link type="text/css" rel="stylesheet" href="resource/css/framework.css" />
    <link type="text/css" rel="stylesheet" href="resource/css/main.css" />
</head>
<body>
<div class="page">

	<c:import url="head.jsp"></c:import>

	<!--the main content begin-->
	<div class="container">
	<!--the content-->
		<div class="ui grid">
			<!--the vertical menu-->
			<div class="four wide column">
				<div class="verticalMenu">
					<div class="ui vertical pointing menu fluid">
  						<a class="item">
							<i class="add icon"></i> 绑定新设备
  						</a>
  						<a class="active teal item">
    						<i class="settings icon"></i> 我的设备
  						</a>
  						<a class="item">
							<i class="terminal icon"></i> 设备动作
  						</a>
					</div>
				</div>
			</div>
			<!--the newDevice form-->
			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large edit icon"></i>
  							<div class="content">
    							编辑设备
    							<div class="sub header">将您的设备连接到云端</div>
  							</div>
						</h3>
					</div>
				</div>
				<div class="ui form fluid vertical segment">
					<form name="form" action="/user/new_device" method="post">
						<div class="two fields">
							<div class="field">
								<label>设备名</label>
								<div class="ui small left labeled icon input">
									<input type="text" placeholder="给您的设备起个名,您容易记住就行，30个字符内……" id="device_title" name="device_title" value=""/>
									<i class="sitemap icon"></i>
								</div>
							</div>
                            <div class="field"></div>
						</div>
						<div class="two fields">
                            <div class="field">
                                <label>描述</label>
                                <textarea placeholder="不超过30个字符……"></textarea>
                            </div>
                            <div class="diy field">
								<label>标签（tags）</label>
									<input type="text" id="device_tags" name="device_tags"/>
                            </div>
                        </div>
						<div class="diy field">
							<label>地理位置名称</label>
							<div class="ui dropdown selection">
      							<input type="hidden" name="gender" value="1">
      							<div class="default text">……</div>
      							<i class="dropdown icon"></i>
      							<div class="menu">
        							<div class="item active" data-value="" value="">……</div>
        							<div class="item" data-value="" value="">使用前台同样地域控件</div>
      							</div>
    						</div>
						</div>
						<div class="diy field" id="location">
							<div class="ui two column grid">
								<div class="column">
									<label>地理位置数据<small>&nbsp;&nbsp;（双击地图选择您设备的位置）</small></label>
								</div>
								<div class="column">
									<div class="two fields">
										<div class="field" style="margin-bottom:0;">
											<input type="text" id="device_lng" name="device_lng" readonly="readonly">
										</div>
										<div class="field" style="margin-bottom:0;">
											<input type="text" id="device_lat" name="device_lat" readonly="readonly">
										</div>
									</div>
								</div>
							</div>
							<!--make a div for google map-->
							<div id="locmap" class="locmap">地图加载中...</div>
						</div>
						<div class="field">
							<label>放置场地</label>
							<div class="ui dropdown selection">
								<input type="hidden" name="gender" value="1">
								<div class="default text">室内</div>
								<i class="dropdown icon"></i>
								<div class="menu">
									<div class="item active" data-value="室内" value="0">室内</div>
									<div class="item" data-value="室外" value="1">室外</div>
								</div>
    						</div>
						</div>
                        <div class="field">
                        	<a class="ui green small button"><i class="photos basic icon"></i>上传图片</a>
                        </div>
						<div class="field devimage">
                            <div class="dev_img_inner">
                               <div class="ui medium image dimmable">
                                    <img src="resource/images/photo.jpg">
                                    <div class="ui dimmer hidden">
                                        <div class="content">
                                            <div class="center">
                                              <a class="ui mini red button">删除</a>
                                            </div>
                                        </div>
                                   	</div>
                                </div>          
                                <div class="ui medium image dimmable">
                                    <img src="resource/images/avatar-default.gif">
                                    <div class="ui dimmer hidden">
                                        <div class="content">
                                            <div class="center">
                                              <a class="ui mini red button">删除</a>
                                            </div>
                                        </div>
                                   	</div>
                                </div>  
                                <div class="ui medium image dimmable">
                                    <img  class="uimedium image" src="resource/images/devicedomo01.jpg">
                                    <div class="ui dimmer hidden">
                                        <div class="content">
                                            <div class="center">
                                              <a class="ui mini red button">删除</a>
                                            </div>
                                        </div>
                                   	</div>
                                </div>
                                <div class="ui medium image dimmable">
                                    <img  class="uimedium image" src="resource/images/devicedomo01.jpg">
                                    <div class="ui dimmer hidden">
                                        <div class="content">
                                            <div class="center">
                                              <a class="ui mini red button">删除</a>
                                            </div>
                                        </div>
                                   	</div>
                                </div>
                            </div>
                         </div>
						<div class="field">
                        	<div class="ui radio checkbox">
                                <input type="radio" name="pub" readonly checked>
                                <label>公开</label>
                          	</div>
                            <div class="ui radio checkbox">
                            	<input type="radio" name="pri" disabled="disabled">
                            	<label>不公开</label>
                         	</div>
                            <div class="ui pointing left label">
      							对于自备设备, 默认接入时是公开的. 
    						</div>
                        </div>
						<input class="ui small blue submit button" type="submit" value="保存">
						<input class="ui small basic button" type="reset" value="取消">
					</form>
					<!--the form end-->
				</div>
			</div>
		</div>
	</div>

	<c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script type="text/javascript" src="resource/javascript/user_new_devices.js"></script>
<script type="text/javascript" src="http://ditu.google.cn/maps/api/js?key=AIzaSyC7a2MMoG2nkxwY6bmxjoULoiz2YTp43iI&sensor=false&language=cn"></script>
<script type="text/javascript" src="resource/javascript/jquery.tagsinput.js"></script>
<script>
    $('#device_tags').tagsInput();
</script>
</body>
</html>
