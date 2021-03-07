<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Leitura do livro&#xa;The Python Book" FOLDED="false" ID="ID_1619772908" CREATED="1615032656231" MODIFIED="1615110327676" BACKGROUND_COLOR="#ffff66" STYLE="oval" NodeVisibilityConfiguration="SHOW_HIDDEN_NODES">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" show_notes_in_map="true" show_note_icons="true" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="9" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Preparação do ambiente" POSITION="right" ID="ID_1658677780" CREATED="1615032927103" MODIFIED="1615050196217" HGAP_QUANTITY="26.749999620020404 pt" VSHIFT_QUANTITY="-40.49999879300598 pt" NodeVisibility="HIDDEN" TEXT_SHORTENED="true">
<edge COLOR="#ff0000"/>
<node TEXT="Instalação do Python" FOLDED="true" ID="ID_1496973642" CREATED="1615033142360" MODIFIED="1615047130508" HGAP_QUANTITY="22.99999973177911 pt" VSHIFT_QUANTITY="-41.24999877065423 pt">
<node TEXT="O Ubuntu 20.04 e outras versoes do Linux Debian vem com Python 3 pre-instalad. Para ter certeza que nossas versoes estao atualizadas,&#xa;vamos atualizar e melhorar o sistema com o comando apt:&#xa;&#xa;  $ sudo apt update&#xa;  $ sudo apt -y upgrade&#xa;&#xa;Apos o termino da atualizacao, podemos verificar a versao do Python que foi instalado no sistema digitando:&#xa;&#xa;  $ python3 -V" ID="ID_1505799766" CREATED="1615046971484" MODIFIED="1615047042847"/>
</node>
<node TEXT="Instalação do gerenciador de pacotes pip" FOLDED="true" ID="ID_1884966327" CREATED="1615033177000" MODIFIED="1615035179112" HGAP_QUANTITY="29.749999530613433 pt" VSHIFT_QUANTITY="-36.74999890476468 pt">
<node TEXT="Para gerenciar pacotes de software para o Python, vamos instalar o pip, uma ferramenta que instalara e gerenciara pacotes de programas&#xa;que usaremos em nossos projetos de desenvolvimento.&#xa;&#xa;  $ sudo apt install -y python3-pip&#xa;&#xa;Para verificar a instalacao digite:&#xa;&#xa;  $ pip3 -V" ID="ID_181671177" CREATED="1615034080768" MODIFIED="1615050019723">
<font BOLD="false"/>
</node>
</node>
<node TEXT="Configuração do ambiente virtual" FOLDED="true" ID="ID_397842023" CREATED="1615033700401" MODIFIED="1615035083989" HGAP_QUANTITY="30.4999995082617 pt" VSHIFT_QUANTITY="38.999998837709455 pt">
<node TEXT="Um ambiente virtual permite a voce ter um ambiente isolado na sua maquina para seus projetos Python, garantindo que cada projeto&#xa;Python tenha suas proprias dependencias e que nao ira corromper outros projetos.&#xa;&#xa;  $ sudo apt install -y python3-venv&#xa;&#xa;Apos esse modulo ser instalado, estamos pronto para criar ambientes. Vamos escolher um diretorio para colocarmos nossos ambientes&#xa;dentro dele:&#xa;&#xa;  $ mkdir ambientes&#xa;  $ cd ambientes&#xa;&#xa;Uma vez estando dentro desse diretorio, podemos criar um ambiente executando o seguinte comando:&#xa;&#xa;  $ python3 -m venv my_env&#xa;&#xa;Para utilizar esse ambiente digite:&#xa;&#xa;  $ source my_env/bin/activate&#xa;&#xa;Seu prompt de comando agora sera prefixado com o nome do ambiente, neste caso eh my_env&#xa;Obs: note que dentro do ambiente virtual voce pode usar o comando python ao inves de python3, e pip ao onves de pip3&#xa;&#xa;Para sair do ambiente apenas digite:&#xa;&#xa;  $ deactivate" ID="ID_162011801" CREATED="1615049985672" MODIFIED="1615049990955"/>
</node>
</node>
<node TEXT="Iniciando com Python" FOLDED="true" POSITION="right" ID="ID_1237616189" CREATED="1615050095940" MODIFIED="1615110295658" HGAP_QUANTITY="55.999998748302495 pt" VSHIFT_QUANTITY="-26.249999217689062 pt">
<edge COLOR="#00ffff"/>
<node TEXT="hello.py" FOLDED="true" ID="ID_1700740589" CREATED="1615108931727" MODIFIED="1615108939273">
<node TEXT="#!/usr/bin/env python3&#xa;print (&quot;alo mundo!&quot;)" ID="ID_1170589914" CREATED="1615108944744" MODIFIED="1615108973992"/>
</node>
<node TEXT="variables.py" FOLDED="true" ID="ID_1424754517" CREATED="1615108984930" MODIFIED="1615109023108">
<node TEXT="#!/usr/bin/env python3&#xa;&#xa;hello_str = &quot;Alo Mundo!&quot;&#xa;hello_bool = True&#xa;hello_tuple = (21,32)&#xa;hello_list = [&quot;Hello&quot;, &quot;this&quot;, &quot;is&quot;, &quot;a&quot;, &quot;list&quot;]&#xa;hello_dict = {&quot;first_name&quot;:&quot;Liam&quot;, &quot;last_name&quot;:&quot;Fraser&quot;, &quot;eye_color&quot;:&quot;Blue&quot;}&#xa;&#xa;print(hello_list[3])&#xa;&#xa;hello_list[3]+=&quot;!&quot;&#xa;print(hello_list[3])&#xa;&#xa;print(str(hello_tuple[0]))" ID="ID_1711469114" CREATED="1615109025522" MODIFIED="1615109028164"/>
</node>
<node TEXT="construct.py" FOLDED="true" ID="ID_1294064791" CREATED="1615109039286" MODIFIED="1615109082963">
<node TEXT="#!/usr/bin/env python3&#xa;&#xa;import sys&#x9;# usado para a funcao sys.exit&#xa;&#xa;target_int = input(&quot;Quantos números inteiros voce vai digitar? &quot;)&#xa;&#xa;# Por hora a variavel target_int contem uma representacao de string que o usuario digitou.&#xa;# Nos vamos tentar converter para um inteiro, se nao for possivel, eh gerada uma excecao&#xa;&#xa;try:&#xa;&#x9;target_int = int(target_int)&#xa;except ValueError:&#xa;&#x9;sys.exit(&quot;Voce deve digitar um número inteiro!&quot;)&#xa;&#xa;ints = list()&#xa;count = 0&#xa;&#xa;while count &lt; target_int:&#xa;&#x9;new_int = input(&quot;Por favor digite o {0} inteiro: &quot;.format(count+1))&#xa;&#x9;isint = False&#xa;&#x9;try:&#xa;&#x9;&#x9;new_int = int(new_int)&#xa;&#x9;&#x9;isint = True&#xa;&#x9;except:&#xa;&#x9;&#x9;print(&quot;Voce deve digitar um numero inteiro!!!&quot;)&#xa;&#xa;&#x9;if isint == True:&#xa;&#x9;&#x9;ints.append(new_int)&#xa;&#x9;&#x9;count += 1&#xa;&#xa;print(&quot;usando um loop for&quot;)&#xa;for value in ints:&#xa;&#x9;print(str(value))" ID="ID_301150495" CREATED="1615109084658" MODIFIED="1615109087605"/>
</node>
<node TEXT="functions.py" FOLDED="true" ID="ID_319439967" CREATED="1615109131135" MODIFIED="1615109136359">
<node TEXT="#!/usr/bin/env python3&#xa;&#xa;# abaixo temos uma funcao chamada modify_string, que aceita uma variavel que sera chamada original no escopo da funcao.&#xa;# algo indentado com 4 espacos embaixo da definicao da funcao esta dentro do escopo dela.&#xa;&#xa;def modify_string(original):&#xa;&#x9;original += &quot; que foi modificada&quot;&#x9;&#x9;# no momento somente a copia local dessa string foi modificada&#xa;&#xa;&#xa;def modify_string_return(original):&#xa;&#x9;original += &quot; que foi modificada&quot;&#xa;&#x9;return original&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;# entretanto nos podemos retornar a copia local para o chamador&#xa;&#xa;&#xa;test_string = &quot;Esta eh uma string de teste&quot;&#xa;&#xa;modify_string(test_string)&#xa;print(test_string)&#xa;&#xa;test_string = modify_string_return(test_string)&#xa;print(test_string)" ID="ID_449887042" CREATED="1615109138706" MODIFIED="1615109141076"/>
</node>
</node>
<node TEXT="50 comandos essenciais" POSITION="right" ID="ID_1190294869" CREATED="1615110274693" MODIFIED="1615110298153" HGAP_QUANTITY="28.99999955296518 pt" VSHIFT_QUANTITY="2.9999999105930355 pt">
<edge COLOR="#007c00"/>
</node>
</node>
</map>
