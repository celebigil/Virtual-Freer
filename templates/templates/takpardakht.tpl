{* smarty *}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>در حال اتصال ...</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style type="text/css">
	#main {
	    background-color: #F1F1F1;
	    border: 1px solid #CACACA;
	    height: 90px;
	    left: 50%;
	    margin-left: -265px;
	    position: absolute;
	    top: 200px;
	    width: 530px;
	}
	#main p {
	    color: #757575;
	    direction: rtl;
	    font-family: Arial;
	    font-size: 16px;
	    font-weight: bold;
	    line-height: 27px;
	    margin-top: 30px;
	    padding-right: 60px;
	    text-align: right;
	}
    </style>
    <script type="text/javascript">
        function doPostback() {
                var theForm = document.forms['form1'];
                if (!theForm)
                    theForm = document.form1;
                var GateChanged = document.getElementById("x_GateChanged").value;
                if (GateChanged == "1")
                    {
                        document.getElementById("Warning").style.visibility = "visible";
                        document.getElementById("Message").style.marginTop = "20px";
                        setTimeout(' var theForm = document.forms[\'form1\'];if (!theForm) theForm = document.form1;theForm.submit();', 4000);
                    }
                else
                    theForm.submit();
           } 
       
    </script>
</head>
<body onLoad="submit_form();">
<div id="main">
<p>در حال اتصال به تک پرداخت</p></div>
	<form name="myform" action="https://takpardakht.com/pay.php" method="POST">
		<input type="hidden" id="amount" name="amount" value="{$data.amount}">
		<input type="hidden" id="merchantID" name="merchantID" value="{$data.merchantID}">
		<input type="hidden" id="merchantName" name="merchantName" value="{$data.merchantName}">
		<input type="hidden" id="merchantLogoURL" name="merchantLogoURL" value="{$data.merchantLogoURL}">
		<input type="hidden" id="invoiceNumber" name="invoiceNumber" value="{$data.invoice_id}">
		<input type="hidden" id="callbackURL" name="callbackURL" value="{$data.callback}">
	</form>
<script language="javascript">function submit_form(){ldelim}document.myform.submit(){rdelim}</script>
</body>