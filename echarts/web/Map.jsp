<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/12/012
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=pB2kHLzxdfCf7rcBtDLQyrPoss1xMvmo"></script>
    <script>
        var map;
        function fun() {
          map = new BMap.Map("mao");          // 创建地图实例,参数是id
          var point = new BMap.Point(113.65,34.76);  // 创建点坐标,参数是经纬度
          map.centerAndZoom(point, 15);             // 初始化地图，设置中心点坐标和地图级别
      }
      function fun2() {
            //获得地理位置
          var ad = new BMap.Geolocation();
          //当前位置 Current当前的  Position 位置
          ad.getCurrentPosition(function(data){
              //获得当前经纬度
              var p = new BMap.Point(data.point.lng,data.point.lat);
              //解码器
               var coder = new BMap.Geocoder();
               //由经纬度解析行政位置,后面是函数回调的结果
              var area = coder.getLocation(p,function (d) {
                  alert(d.address);
              });

          });


      };
      function fun3() {
          fun();
          //本地搜索LocalSearch
          var sch=new BMap.LocalSearch(map,{
              //搜索结果还在地图上 map:map
              //autoViewport 自动显示
              renderOptions:{map:map,autoViewport:true}

          });

          sch.searchNearby("凉皮","文化路");

      }
      
    </script>

</head>
<body>
<div id="mao" style="width: 600px; height: 600px;"></div>
<button onclick="fun()">显示</button>
<button onclick="fun2()">定位</button>
<button onclick="fun3()">搜索</button>
</body>
</html>
