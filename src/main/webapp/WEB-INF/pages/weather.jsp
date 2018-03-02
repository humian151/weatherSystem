<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>天气预报</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/weather.css">
</head>
<body>
<div class="container">
    <div class="row query-row">
        <div class="col-sm-2 col-md-4  hidden-xs">
            <h2>我的天气</h2>
        </div>
        <div class="col-sm-10 col-md-8">
            <span class="hidden-xs">城市选择：</span>
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">上海 <span class="caret"></span></button>
                <ul class="dropdown-menu" id="province-dropdown">
                    <!-- 省份 -->
                </ul>
            </div>
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">上海 <span class="caret"></span></button>
                <ul class="dropdown-menu" id="city-dropdown">
                    <!-- 城市 -->
                </ul>
            </div>
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">上海 <span class="caret"></span></button>
                <ul class="dropdown-menu" id="district-dropdown">
                    <!-- 县、区 -->
                </ul>
            </div>
            <button class="btn btn-info" id="btn-weather">查看天气</button>
        </div>
    </div>
    <h4 id="show-city-name">上海天气</h4>
    <div class="weather-result">

    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
var idx = 0; //页面加载初始值
$(function () {

    $.ajax({
        url:"/address/getAllProvince",
        type:"GET",
        success:function (data) {
            for(var i=0;i<data.length;i++){
                if(i==0){
                    $('#province-dropdown').parent()
                        .children('button').html((data[i].name+'<span class="caret"></span>'));
                    $('#province-dropdown').parent()
                        .children('button').attr('index',data[i].id);
                    queryCity(data[i].id);
                }
                $('<li></li>').append($('<a></a>').attr('href','javascript:void(0);').attr('index',data[i].id).html(data[i].name))
                   .appendTo('#province-dropdown');
            }
        }
    });
    dropdownEvent('#province-dropdown');
    dropdownEvent('#city-dropdown');
    dropdownEvent('#district-dropdown');
    $('#btn-weather').click(function () {
        var cityName = $('#district-dropdown').parent()
            .children('button').text();
        queryWeather(cityName);
    });

});
/**
* 绑定下拉框事件
* */
function dropdownEvent(ele){
    //事件委托
    $(ele).on('click','li',function(){
        $(ele).parent()
            .children('button').html($(this).find('a').html()+'<span class="caret"></span>');
        $(ele).parent()
            .children('button').attr('index',$(this).find('a').attr('index'));
        if(ele =='#province-dropdown'){
            //省份查询市区
            queryCity($(this).find('a').attr('index'));
        }else if(ele =='#city-dropdown'){
            //市区查询县区
            queryDistrict($(this).find('a').attr('index'));
        }

    });
}
/**
 * 查询城市信息
 * @param id
 */
function queryCity(id) {
    $.ajax({
        url:"/address/getCityByProvinceId/"+id,
        type:"GET",
        success:function (data) {
            $('#city-dropdown').html('');
            for(var i=0;i<data.length;i++){
                if(i==0){
                    $('#city-dropdown').parent()
                        .children('button').html((data[i].name+'<span class="caret"></span>'));
                    $('#city-dropdown').parent()
                        .children('button').attr('index',data[i].id);
                    queryDistrict(data[i].id);
                }
                $('<li></li>').append($('<a></a>').attr('href','javascript:void(0);').attr('index',data[i].id).html(data[i].name))
                    .appendTo('#city-dropdown');
            }
        }
    });
}
/**
 * 查询县区
 * @param id
 */
function queryDistrict(id) {
    $.ajax({
        url:"/address/getDistrictByCityId/"+id,
        type:"GET",
        success:function (data) {
            $('#district-dropdown').html('');
            for(var i=0;i<data.length;i++){
                if(i==0){
                    $('#district-dropdown').parent()
                        .children('button').html((data[i].name+'<span class="caret"></span>'));
                    $('#district-dropdown').parent()
                        .children('button').attr('index',data[i].id);
                    if(idx==0){ //查询天气
                        var cityName = $('#district-dropdown').parent()
                            .children('button').text();
                        queryWeather(cityName);
                        idx++;
                    }
                }
                $('<li></li>').append($('<a></a>').attr('href','javascript:void(0);').attr('index',data[i].id).html(data[i].name))
                    .appendTo('#district-dropdown');
            }
        }
    });
}
/**
 * 查询天气
 */
function  queryWeather(cityName) {
    $.ajax({
        url:"/address/getWeatherByCityName/"+cityName,
        type:"GET",
        success:function (data) {
            console.log(data);
            if(data.stateCode==200 && data.message.message=='Success !'){
                var yesterday = data.message.data.yesterday;
                var forecast = data.message.data.forecast;
                console.log(yesterday);
                console.log(forecast);
                $('#show-city-name').html(data.message.city);
                $('.weather-result').html('');
                listWeather(yesterday,'.weather-result','昨天');
                for(var i=0;i<forecast.length;i++){
                    var day='';
                    if(i==0){
                        day = '今天';
                    }else if(i==1){
                        day = '明天';
                    }else if(i==2){
                        day = '后天';
                    }else{
                        day = '第'+(i+1)+'天';
                    }
                    listWeather(forecast[i],'.weather-result',day);
                }
            }else{
                $('#show-city-name').html('查询不到当前城市的天气，请检查参数或重试！');
                $('.weather-result').html('');
            }
        }
    });
}

function listWeather(data,ele,day) {
    var weatherImg = "";
    //image/1.png
    switch (data.type){
        case '晴':
            weatherImg = 'image/1.png';
            break;
        case '阴':
            weatherImg = 'image/3.png';
            break;
        case '多云':
            weatherImg = 'image/2.png';
            break;
        case '阴':
            weatherImg = 'image/3.png';
            break;
        case '小雨':
            weatherImg = 'image/8.png';
            break;
        case '中雨':
            weatherImg = 'image/9.png';
            break;
        default:
            weatherImg = 'image/4.png';
    }
    $('<div class="row"></div>').append('<div class="hidden-xs col-md-2"><h4>'+day+'</h4></div>')
        .append('<div class="col-xs-6 col-md-2"><h4>'+data.date+'</h4></div>')
        .append('<div class="col-xs-6 col-md-2"><img height="94" src="'+weatherImg+'" alt=""></div>')
        .append('<div class="col-xs-6 col-md-1"><h4>'+data.type+'</h4></div>')
        .append('<div class="col-xs-6 col-md-3"><h4>'+data.low+'~'+data.high+'</h4><h4>'+data.fx+data.fl+'</h4></div>').appendTo(ele);
}
</script>
</html>
