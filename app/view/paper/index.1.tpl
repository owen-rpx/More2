<!-- app/view/news/list.tpl -->
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>Hacker News</title>
    <link rel="stylesheet" href="/public/libs/frozen_ui/css/frozen.css" />
        <style>
        table,tr,td {
            border: 1px dotted #ccc;
            border-spacing:0;
            border-collapse:collapse;
        }
        .head{
            text-align: center;
            line-height: 30px;
            color:#fff;
            font-weight: 700;
        }
        .part1{
            background-color:#9BBB59;
        }
        .part2{
            background-color:#FFC000;
        }
        .part3{
            background-color:#548DD4;
        }
        .part4{
            background-color:#B2A1C7;
        }
    </style>
  </head>
  <body ontouchstart="">
        
        <header class="ui-header ui-header-positive ui-border-b">
            <i class="ui-icon-return" onclick="history.back()"></i><h1>选项卡 tab</h1><button class="ui-btn">回首页</button>
        </header>
        <footer class="ui-footer ui-footer-btn">
            <ul class="ui-tiled ui-border-t">
                <li data-href="index.html" class="ui-border-r"><div>基础样式</div></li>
                <li data-href="ui.html" class="ui-border-r"><div>UI组件</div></li>
                <li data-href="js.html"><div>JS插件</div></li>
            </ul>
        </footer>
        
        <section class="ui-container">
           <table class="ui-table ui-border">
            <thead>
                <th colspan="4"><h1>More健身方案设计调研问卷</h1></th>
            </thead>
            <tr>
                <td colspan="4" class="head part1">基本信息填写(必填)</td>
            </tr>
            <tr>
                <td>性别</td>
                <td>
                    男<input type="radio" name="gender" value="male">
                    女<input type="radio" name="gender" value="female">
                </td>
                <td>出生年月日</td>
                <td></td>
            </tr>
            <tr>
                <td>身高m</td>
                <td>(可计算BMI)</td>
                <td>体重m</td>
                <td>(可计算BMI)</td>
            </tr>
            <tr>
                <td>腰围cm</td>
                <td></td>
                <td>BMI</td>
                <td>体重/身高的平方</td>
            </tr>
            <tr>
                <td>有无严重既往病史</td>
                <td>
                    否<input type="radio" name="disease" value="y">
                    是<input type="radio" name="disease" value="n">

                </td>
                <td>有无严重家族遗传病史</td>
                <td>
                    否<input type="radio" name="familial-hereditary-disease" value="y">
                    是<input type="radio" name="familial-hereditary-disease" value="n">
                </td>
            </tr>
            <tr>
                <td>吸烟否</td>
                <td>
                    是<input type="radio" name="smoke" value="y">
                    否<input type="radio" name="smoke" value="n">
                    刚戒烟<input type="radio" name="smoke" value="j">
                </td>
                <td>育否(仅女性)</td>
                <td>
                    是<input type="radio" name="birth" value="y">
                    否<input type="radio" name="birth" value="n">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    是否久坐少动(每周运动少于3次，每次少于30分钟，此情况已有3个月)
                    是<input type="radio" name="longsit" value="y">
                    否<input type="radio" name="longsit" value="n">
                </td>
            </tr>
            <tr>
                <td colspan="2">有无运动损伤（已就医或需就医的）</td>
                <td colspan="2">
                    是(若有请说明)<input type="radio" name="injure" value="y">
                    否<input type="radio" name="injure" value="n">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    损伤部位:<input type="text" name="injureposition">
                    <br/>
                    肩，肘，腕，髋，膝，踝，颈椎，胸椎，腰椎
                </td>
                <td colspan="2">具体情况: <textarea></textarea></td>
            </tr>
            <tr>
                <td colspan="4" class="head part2">基本信息(选填尽量填)</td>
            </tr>
            <tr>
                <td>是否高血压</td>
                <td>
                    是<input type="radio" name="hypertension" value="y">
                    否<input type="radio" name="hypertension" value="n">
                </td>
                <td>是否高血脂</td>
                <td>
                   是<input type="radio" name="hyperlipaemia" value="y">
                   否<input type="radio" name="hyperlipaemia" value="n"> 
                </td>
            </tr>
            <tr>
                <td>是否高血糖</td>
                <td>
                    是<input type="radio" name="hyperglycaemia" value="y">
                    否<input type="radio" name="hyperglycaemia" value="n">
                </td>
                <td>睡眠质量</td>
                <td>
                   很好<input type="radio" name="sleep" value="5">
                   好<input type="radio" name="sleep" value="4">
                   一般<input type="radio" name="sleep" value="3">
                   差<input type="radio" name="sleep" value="2">
                   很差<input type="radio" name="sleep" value="1">
                </td>
            </tr>
            <tr>
                <td colspan="4" class="head part3">个人运动信息(选填尽量填)</td>
            </tr>
            <tr>
                <td colspan="2">健身目标</td>
                <td colspan="2">
                    提升阶段<input type="radio" name="fitness" value="6">
                    减脂<input type="radio" name="fitness" value="5">
                    塑形<input type="radio" name="fitness" value="4">
                    体能提升<input type="radio" name="fitness" value="3">
                    产后恢复<input type="radio" name="fitness" value="2">
                    其他<input type="radio" name="fitness" value="1">
                    <input type="text" name="other">
                </td>
            </tr>
            <tr>
                <td colspan="2">有无健身习惯</td>
                <td colspan="2">
                    有(若有，请填写下列选项)<input type="radio" name="fitnesshabit" value="y">
                    无<input type="radio" name="fitnesshabit" value="n">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    每周健身方式:<input type="text" name="fitnessway">
                </td>
                <td colspan="2">
                    健身次数:<input type="text" name="fitnesstimes">
                </td>
            </tr>

            <tr>
                <td colspan="4" class="head part4">个人资料信息</td>
            </tr>
            <tr>
                <td>姓名</td>
                <td>
                     <input type="text" name="name">
                </td>
                <td>职业</td>
                <td>
                    <input type="text" name="job">
                </td>
            </tr>
            <tr>
                <td>手机</td>
                <td>
                     <input type="text" name="phone">
                </td>
                <td>微信</td>
                <td>
                    <input type="text" name="wechat">
                </td>
            </tr>
        </table>
        <b>注：您的信息将会保密，请务必准确填写完整。上述信息将用于您的健身解决方案。我们将根据您填写的完善性、准确性制定对应的方案，选填项也请尽量填写哦。</b>
        </section>
        
        <script src="/public/libs/frozen_ui/lib/zepto.min.js"></script>
        <script src="/public/libs/frozen_ui/js/frozen.js"></script>
        
        <script>

        </script>
    </body>
</html>