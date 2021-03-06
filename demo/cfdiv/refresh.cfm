<!--- **************************************************************************************************** --->
<h3>Refresh a Div programmatically.</h3>
<p>While you use a custom ID when you create your div you can programmatically fire the bind using the Railo.Ajax.refresh function.</p>
<p><b>IS IMPORTATNT TO USE YOUR OWN UNIQUE DIV ID TO HAVE LATER CONTROL OVER THEM</b></p>
<script src="https://gist.github.com/2863851.js?file=cfdiv-4.cfm"></script>

<cfdiv bind="url:/demo/cfdiv/files/time.cfm" bindonload="true" id="my_div"/>
<input type="button" onclick="Railo.Ajax.refresh('mydiv3')" class="submitButton" value="Refresh div 'mydiv3"/>

<p>
Note that if bindOnLoad is false you cannot call refresh until page has not been loaded. This is due to the fact that teh binding object
is created onLoad. Calling the refresh methods before the window onLoad events gets fired will try to use a not yet existing binding.
</p>

<script src="https://gist.github.com/2863851.js?file=cfdiv-5.cfm"></script>

<cfdiv bind="url:/demo/cfdiv/files/time.cfm" bindonload="true" id="abother_div"/>
<script type="text/javascript">
    Railo.Events.subscribe(function(){Railo.Ajax.refresh('my_div')},'abother_div');
</script>
<p>
In the previous example bindOnLoad is false. The div is loaded by calling Refresh after page has loaded. In details the internal
Railo onLoad event is used to be sure that the Railo object has been initialized, and any binding has been registered.
</p>

