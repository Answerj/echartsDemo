<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <script type="text/javascript" src="js/china.js"></script>
    <script>
        function fun() {
            //指定显示图表的位置
            var chart = echarts.init(document.getElementById("one"));
            var option = {
                //x轴
                xAxis: {
                    data: ["一月", "二月", "三月"]
                },
                //y轴
                yAxis: {},
                series: {
                    //图表类型,柱状图是bar
                    type: "bar",
                    data: [300, 200, 900]

                },

            };
            chart.setOption(option);
        }
        function fun2() {
            var chart = echarts.init(document.getElementById("one"));
            var option = {
                //鼠标悬停提示
                tooltip: {
                    trigger: "item",   //触发器,作用所有
                    //提示内容,{c}代表value,c是第三个序号{b}代表name的值
                    formatter: "{b}产值:<br/>{c}",
                },
                series: {
                    type: "pie",
                    data: [
                        {name: "开封", value: 900},
                        {name: "郑州", value: 400},
                        {name: "许昌", value: 600},
                    ]
                }
            }
            chart.setOption(option);
        }
        function fun3() {
            var cav = document.getElementById("cav");
            //给元素设定为2D
            var x = cav.getContext("2d");
            //设定矩形填充颜色
            x.fillStyle = "red";
            //括号参数是x坐标,y坐标,宽度高度
            x.fillRect(0,30,80,90);
        }
        function fun4() {
            //获得元素div
            var chart = echarts.init(document.getElementById("one"));
          //option  选项
            var option = {
              series:{
                  //类型 地图
                  type:"map",
                  //指定地图类型 全国地图
                  mapType:"china",
              },
            };
            chart.setOption(option);
        }
        function fun5() {
            var chart = echarts.init(document.getElementById("one"));
            var option = {
                //鼠标悬停提示
                tooltip:{
                    trigger:"item",
                    formatter:"{b}<br/>{c}"
                },
                //geo 地理位置
                geo:{map:"china"},
                series:[{
                    //效果 光圈分散
                    type:"effectScatter",
                    //坐标系统
                    coordinateSystem:"geo",
                    //数据 value 填充的是坐标经纬度和
                    data:[{name:"郑州",value:[113.65,34.76,200]}],
                }],
            };
            chart.setOption(option);
        }
    </script>
</head>
<body>
<%--把两个块标签在行内显示--%>
<div style="display: flex; flex-flow:row; ">
    <div id="one" style="width: 500px; height: 400px; "></div>
    <div  style="width: 500px; height: 400px; border: 1px solid rebeccapurple;">
        <canvas id="cav" style="width: 500px; height: 500px;"></canvas>
    </div>
</div>
<button onclick="fun()">点击</button>
<button onclick="fun2()">饼图</button>
<button onclick="fun3()">原理</button>
<button onclick="fun4()">地图</button>
<button onclick="fun5()">散点图</button>
</body>
</html>
