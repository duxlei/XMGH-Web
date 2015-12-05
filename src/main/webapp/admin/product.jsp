<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>产品管理 | Yeelink用户中心</title>
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
  						<a class="item" href="publish_article.jsp">
							<i class="rocket icon"></i> 部署新产品
  						</a>
  						<a class="active teal item" href="article_list.jsp">
    						<i class="cloud icon"></i> 我的产品
  						</a>
  						<a class="item" href="#">
							<i class="bar chart icon"></i> 产品统计
  						</a>
					</div>
				</div>
			</div>

			<div class="twelve wide column">
				<div class="pageHeader">
					<div class="segment">
						<h3 class="ui dividing header">
  							<i class="large setting icon"></i>
  							<div class="content">
    							产品管理
    							<div class="sub header">管理这个产品及其批次</div>
  							</div>
						</h3>
					</div>
				</div>
                <!--the device info-->
				<div class="ui device two column middle aligned vertical grid segment">
                    <div class="column verborder">
							<div class="ui info segment">
                                <h5 class="ui header">
                                    温室自动报警器 <span class="ui type label" title="对整个平台公开产品数据">平台公开</span>
                                    <div class="sub header">这是一个测试中，还未发布的产品。</div>
                                </h5>
                                <p>模板设备： <a class="externalUrl" href="device.jsp" title="模板设备">设备01</a></p>
								<p>已生成： <span class="stress">3</span> 批次</p>
								<p>已激活： <span class="stress">23 / 50</span>，46.0%</p>
							</div>
                    </div>
  					<div class="center aligned column">
  							<a class="ui small red button" title="批次" href="batch.jsp"><i class="archive icon"></i>批 次</a>
							<a class="ui small teal button" title="导出全部产品信息"><i class="cloud download icon"></i>导 出</a>
  							<a class="ui small blue button" href="edit_product.jsp" title="编辑产品"><i class="edit icon"></i>编 辑</a>
  					</div>
				</div>

                <div class="ui vertical segment">
                    <div class="ui small left icon input">
                      <input type="text" placeholder="输入序列号...">
                      <i class="search icon"></i>
                    </div>
                        <a class="circular ui mini active button" title="全部">全部</a>
                        <a class="circular ui mini button" title="已激活">已激活</a>
                        <a class="circular ui mini button" title="未激活">未激活</a>
                        <a class="circular ui mini button" title="已冻结">已冻结</a>
                </div>

                <!--                the produc table-->
                <table class="ui compact table">
                    <thead>
                        <tr>
                            <th>序列号</th>
                            <th>密 钥</th>
                            <th>批 次</th>
                            <th>激活状态</th>
                            <th>操 作</th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td>nvju35jful43</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-001</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
							<span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful44</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-001</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr class="error">
                          <td>nvju35jful45<i class="attention icon" title="产品异常"></i></td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-001</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful46</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-001</td>
                          <td><i class="icon close"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful47</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-001</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui green button">解 冻</a>
								<a class="ui green button disabled">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful48</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-001</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful49</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful50</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful51</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon close"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful52</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon close"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful53</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful54</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful55</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr>
                          <td>nvju35jful56</td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon checkmark"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr><tr class="error">
                          <td>nvju35jful57<i class="attention icon" title="产品异常"></i></td>
                          <td>nvju35jful48</td>
                          <td>L20131205-ylb-002</td>
                          <td><i class="icon close"></i></td>
                          <td>
                            <span class="mini ui buttons">
								<a class="ui button disabled">解 冻</a>
								<a class="ui green button">冻 结</a>
								<a class="ui basic button">删 除</a>
							</span>
                          </td>
                        </tr>
                    </tbody>
                </table>

                <div class="ui pagination menu">
                <a class="icon item">
                    <i class="icon left arrow"></i>
                </a>
                <a class="active item">
                    1
                </a>
                <div class="disabled item">
                    ...
                </div>
                <a class="item">
                    4
                </a>
                <a class="item">
                   5
                </a>
                <a class="item">
                    6
                </a>
                <a class="icon item">
                    <i class="icon right arrow"></i>
                </a>
            </div>
            </div>
        </div>
    </div>

    <c:import url="foot.jsp"></c:import>
</div>

<script type="text/javascript" src="resource/javascript/jquery.min.js"></script>
<script type="text/javascript" src="resource/javascript/framework.js"></script>
<script>
    $('.ui.dropdown')
        .dropdown();
</script>
</body>
</html>
