<#--
This template is hosted here:
https://github.com/inofix/com_flizzbee-webcontent/template/stellungsnahme.ftl
Please commit your changes there as any changes here will be lost...
-->
<#--
ToDo:
Remove the language part and use language-ext.properties
-->
<h3>Aussage</h3>
<p>
${Statement.getData()}
</p>
<hr/>
<h3>G&uuml;ltigkeit</h3>
<p>
<#if Country.getData()??>
Diese Aussage betrifft:
</p>
<ul>
    <li>
        <p>${Country.getData()}</p>
        <p>${Region.getData()}</p>
        <p>${Commune.getData()}</p>
    </li>
</ul>
</#if>
<hr/>
<h3>Extrapunkte Nachhaltigkeit</h3>

<#if (Landscape.getData()?length > 4)>
    <#assign i = Landscape.getData()?length - 2 />
    <#assign land = Landscape.getData()?substring(2,i)?number />
</#if>
<#if (Regional.getData()?length > 4)>
    <#assign i = Regional.getData()?length - 2 />
    <#assign reg = Regional.getData()?substring(2,i)?number />
</#if>
<#if (Traditional.getData()?length > 4)>
    <#assign i = Traditional.getData()?length - 2 />
    <#assign trad = Traditional.getData()?substring(2,i)?number />
</#if>
<#if (Organic.getData()?length > 4)>
    <#assign i = Organic.getData()?length - 2 />
    <#assign bio = Organic.getData()?substring(2,i)?number />
</#if>
<#if (Fair.getData()?length > 4)>
    <#assign i = Fair.getData()?length - 2 />
    <#assign fair = Fair.getData()?substring(2,i)?number />
</#if>
<#if (Healthy.getData()?length > 4)>
    <#assign i = Healthy.getData()?length - 2 />
    <#assign health = Healthy.getData()?substring(2,i)?number />
</#if>
<#if ! land?is_number>
    <#assign land = 0 />
</#if>
<#if ! reg?is_number>
    <#assign reg = 0 />
</#if>
<#if ! trad?is_number>
    <#assign trad = 0 />
</#if>
<#if ! bio?is_number>
    <#assign bio = 0 />
</#if>
<#if ! fair?is_number>
    <#assign fair = 0 />
</#if>
<#if ! health?is_number>
    <#assign health = 0 />
</#if>

<#assign tot = ( land + reg + trad + bio + fair + health ) />
<#assign max = ( 10 + 10 + 10 + 10 + 10 + 10 ) />

<div class='bar' style='width: 100%; border-style: 1px solid grey; background-color: silver; display: inline-block;'>
    Landschaft und Boden: ${land}
    <div class='points' style='width: ${land * 10}%; background-color: gold; display: inline-block;'>
    </div>
</div>
<div class='bar' style='width: 100%; border-style: 1px solid grey; background-color: silver;'>
    Regional: ${reg}
    <div class='points' style='width: ${reg * 10}%; background-color: gold;'>
    </div>
</div>
<div class='bar' style='width: 100%; border-style: 1px solid grey; background-color: silver;'>
    Traditionell: ${trad}
    <div class='points' style='width: ${ 10}%; background-color: gold;'>
    </div>
</div>
<div class='bar' style='width: 100%; border-style: 1px solid grey; background-color: silver; display: inline-block;'>
    <div class='points' style='width: ${bio * 10}%; background-color: gold; display: inline-block;'>
        Biologisch: ${bio}
    </div>
</div>
<div class='bar' style='width: 100%; border-style: 1px solid grey; background-color: silver; display: inline-block;'>
    <div class='points' style='width: ${fair * 10}%; background-color: gold; display: inline-block;'>
        Fair Trade: ${fair}
    </div>
</div>
<div class='bar' style='width: 100%; border-style: 1px solid grey; background-color: silver; display: inline-block;'>
    <div class='points' style='width: ${health * 10}%; background-color: gold; display: inline-block;'>
        Gesundheit: ${health}
    </div>
</div>
<div class='points' style='width: 100%; border-style: 1px solid grey; border-top: 2px solid black; background-color: silver;'>
    <div class='points' style='width: ${tot / max * 100 }%; background-color: gold;'>
        <strong>Nachhaltigkeit: ${tot}</strong>
    </div>
</div>


<hr/>
