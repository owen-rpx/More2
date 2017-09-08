<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
    <style>
        .nav-btn {
            margin: 0px;
        }

        .header-text {
            margin: 0px !important;
            color: #fff;
            font-size: 1.2em !important;
            font-weight: 500;
            overflow: visible !important;
        }

        .part1 {
            background-color: #9BBB59 !important;
        }

        .part2 {
            background-color: #FFC000 !important;
        }

        .part3 {
            background-color: #548DD4 !important;
        }

        .part4 {
            background-color: #B2A1C7 !important;
        }

        span.sub-label {
            margin-left: 5px;
            font-size: .8em;
            color: #aaa;
        }

        .guard-bottom {
            height: 1px;
            margin-top: 1.5em;
        }
    </style>
    <script>
        $(window).on("navigate", function (event, data) {
            console.log(data);
        });
    </script>
    <title>More2 Home</title>
</head>

<body>
    <!-- Start of first page -->
    <div data-role="page" id="step1">

        <div data-role="header" class="part1">
            <h3 class="header-text">基本信息填写(必填)</h3>
        </div>
        <!-- /header -->

        <div role="main" class="ui-content">

            <!-- <label for="gender">性别</label>
            <label><input type="radio" name="gender" value="0">男</label>
            <label><input type="radio" name="gender" value="1">女</label> -->

            <fieldset data-role="controlgroup">
                <legend>性别</legend>
                <input type="radio" name="gender" id="gender-n" value="0">
                <label for="gender-n">男</label>
                <input type="radio" name="gender" id="gender-y" value="1">
                <label for="gender-y">女</label>
            </fieldset>

            <label for="date">出生年月日</label>
            <input type="date" name="date" id="date" value="">

            <label for="height">身高m<span class="sub-label">(可计算BMI)</span></label>
            <input type="text" name="height" id="height" value="">

            <label for="weight">体重kg<span class="sub-label">((可计算BMI)</span></label>
            <input type="text" name="weight" id="weight" value="">

            <label for="waistline">腰围cm</label>
            <input type="text" name="waistline" id="waistline" value="">

            <label for="BMI">BMI<span class="sub-label">体重/身高的平方</span></label>
            <input type="text" name="BMI" id="BMI" value="">

            <!-- data-type="horizontal" -->
            <fieldset data-role="controlgroup">
                <legend>有无严重既往病史</legend>
                <input type="radio" name="disease" id="disease-n" value="0">
                <label for="disease-n">否</label>
                <input type="radio" name="disease" id="disease-y" value="1">
                <label for="disease-y">是</label>
            </fieldset>
            <fieldset data-role="controlgroup">
                <legend>有无严重家族遗传病史</legend>
                <input type="radio" name="familial-hereditary-disease" id="familial-hereditary-disease-n" value="0">
                <label for="familial-hereditary-disease-n">否</label>
                <input type="radio" name="familial-hereditary-disease" id="familial-hereditary-disease-y" value="1">
                <label for="familial-hereditary-disease-y">是</label>
            </fieldset>

            <fieldset data-role="controlgroup">
                <legend>吸烟否</legend>
                <input type="radio" name="smoke" id="smoke-n" value="0">
                <label for="smoke-n">否</label>
                <input type="radio" name="smoke" id="smoke-y" value="1">
                <label for="smoke-y">是</label>
                <input type="radio" name="smoke" id="smoke-j" value="2">
                <label for="smoke-j">刚戒烟</label>
            </fieldset>


            <fieldset data-role="controlgroup">
                <legend>育否<span class="sub-label">(仅女性)</span></legend>
                <input type="radio" name="birth" id="birth-n" value="0">
                <label for="birth-n">否</label>
                <input type="radio" name="birth" id="birth-y" value="1">
                <label for="birth-y">是</label>
            </fieldset>

            <fieldset data-role="controlgroup">
                <legend>是否久坐少动<span class="sub-label">(每周运动少于3次，每次少于30分钟，此情况已有3个月)</span></legend>
                <input type="radio" name="longsit" id="longsit-n" value="0">
                <label for="longsit-n">否</label>
                <input type="radio" name="longsit" id="longsit-y" value="1">
                <label for="longsit-y">是</label>
            </fieldset>
            <fieldset data-role="controlgroup">
                <legend>有无运动损伤<span class="sub-label">(已就医或需就医的)</span></legend>
                <input type="radio" name="injure" id="injure-n" value="0">
                <label for="injure-n">否</label>
                <input type="radio" name="injure" id="injure-y" value="1">
                <label for="injure-y">是(若有请说明)</label>
            </fieldset>

            <div>
                <label for="injureposition">损伤部位</label>
                <select name="injureposition" id="injureposition">
                    <option value="1">肩</option>
                    <option value="2">肘</option>
                    <option value="3">腕</option>
                    <option value="4">髋</option>
                    <option value="5">膝</option>
                    <option value="6">踝</option>
                    <option value="7">颈椎</option>
                    <option value="8">胸椎</option>
                    <option value="9">腰椎</option>
                    <option value="0">其他</option>
                </select>
            </div>
            <div>
                <label for="otherposition">其他情况</label>
                <textarea cols="40" name="otherposition" id="otherposition"></textarea>
            </div>

        </div>
        <!-- /content -->

        <!-- <div data-role="footer" data-position="fixed">
            
        </div> -->
        <div class="guard-bottom"></div>
        <div class="btn-footer ui-footer-fixed">
            <a href="#step2" class="ui-btn nav-btn">下一步</a>
        </div>
        <!-- /footer -->
    </div>
    <!-- /page -->

    <!-- Start of second page -->
    <div data-role="page" id="step2">

        <div data-role="header" class="part2">
            <h3 class="header-text">基本信息(选填尽量填)</h3>
        </div>
        <!-- /header -->

        <div role="main" class="ui-content">
            <fieldset data-role="controlgroup">
                <legend>是否高血压</legend>
                <input type="radio" name="hypertension" id="hypertension-n" value="0">
                <label for="hypertension-n">否</label>
                <input type="radio" name="hypertension" id="hypertension-y" value="1">
                <label for="hypertension-y">是</label>
            </fieldset>
            <fieldset data-role="controlgroup">
                <legend>是否高血脂</legend>
                <input type="radio" name="hyperlipaemia" id="hyperlipaemia-n" value="0">
                <label for="hyperlipaemia-n">否</label>
                <input type="radio" name="hyperlipaemia" id="hyperlipaemia-y" value="1">
                <label for="hyperlipaemia-y">是</label>
            </fieldset>
            <fieldset data-role="controlgroup">
                <legend>是否高血糖</legend>
                <input type="radio" name="hyperglycaemia" id="hyperglycaemia-n" value="0">
                <label for="hyperglycaemia-n">否</label>
                <input type="radio" name="hyperglycaemia" id="hyperglycaemia-y" value="1">
                <label for="hyperglycaemia-y">是</label>
            </fieldset>
            <fieldset data-role="controlgroup">
                <legend>睡眠质量</legend>
                <select name="sleep" id="sleep">
                    <option value="1">很好</option>
                    <option value="2">好</option>
                    <option value="3">一般</option>
                    <option value="4">差</option>
                    <option value="5">很差</option>
                </select>
            </fieldset>
        </div>
        <!-- /content -->
        <div class="guard-bottom"></div>
        <div class="ui-footer-fixed">
            <a href="#step3" class="ui-btn nav-btn">下一步</a>
        </div>
        <!-- /footer -->
    </div>
    <!-- /page -->
    <!-- Start of second page -->
    <div data-role="page" id="step3">

        <div data-role="header" class="part3">
            <h3 class="header-text">个人运动信息(选填尽量填)</h3>
        </div>
        <!-- /header -->

        <div role="main" class="ui-content">
            <fieldset data-role="controlgroup">
                <legend>健身目标</legend>
                <select name="fitness" id="fitness">
                    <option value="1">提升阶段</option>
                    <option value="2">减脂</option>
                    <option value="3">塑形</option>
                    <option value="4">体能提升</option>
                    <option value="5">产后恢复</option>
                    <option value="6">其他</option>
                </select>
            </fieldset>
            <div>
                <label for="otherfitness">其他情况</label>
                <textarea cols="40" name="otherfitness" id="otherfitness"></textarea>
            </div>
            <fieldset data-role="controlgroup">
                <legend>有无健身习惯</legend>
                <input type="radio" name="fitnesshabit" id="fitnesshabit-y" value="1">
                <label for="fitnesshabit-y">有<span class="sub-label">(若有，请填写下列选项)</span></label>
                <input type="radio" name="fitnesshabit" id="fitnesshabit-n" value="0">
                <label for="fitnesshabit-n">无</label>
            </fieldset>
            <div>
                <label for="fitnessway">每周健身方式</label>
                <input type="text" name="fitnessway" id="fitnessway" value="">
                <label for="fitnesstimes">健身次数</label>
                <input type="text" name="fitnesstimes" id="fitnesstimes" value="">
            </div>
        </div>
        <!-- /content -->
        <div class="guard-bottom"></div>
        <div class="ui-footer-fixed">
            <a href="#step4" class="ui-btn nav-btn">下一步</a>
        </div>
        <!-- /footer -->
    </div>
    <!-- /page -->
    <!-- Start of second page -->
    <div data-role="page" id="step4">

        <div data-role="header" class="part4">
            <h3 class="header-text">个人资料信息</h3>
        </div>
        <!-- /header -->

        <div role="main" class="ui-content">
            <label for="name">姓名</label>
            <input type="text" name="name" id="name" value="">
            <label for="job">职业</label>
            <input type="text" name="job" id="job" value="">
            <label for="phone">手机</label>
            <input type="text" name="phone" id="phone" value="">
            <label for="wechat">微信</label>
            <input type="text" name="wechat" id="wechat" value="">
        </div>
        <!-- /content -->
        <div class="guard-bottom"></div>
        <div class="ui-footer-fixed">
            <a href="#result" class="ui-btn nav-btn">确定</a>
        </div>
        <!-- /footer -->
    </div>
    <!-- /page -->

    <!-- Start of second page -->
    <div data-role="page" id="result">

        <div data-role="header">
            <h3 class="header-text">Bar</h3>
        </div>
        <!-- /header -->

        <div role="main" class="ui-content">
            result result result
        </div>
        <!-- /content -->
        <div class="guard-bottom"></div>
        <div class="ui-footer-fixed">
            <a href="#step1" class="ui-btn nav-btn">返回首页</a>
        </div>
        <!-- /footer -->
    </div>
    <!-- /page -->
</body>

</html>