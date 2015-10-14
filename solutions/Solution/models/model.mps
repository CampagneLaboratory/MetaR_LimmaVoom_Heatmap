<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d002fd90-2274-4719-b7b1-8b417bde8daa(model)">
  <persistence version="9" />
  <languages>
    <devkit ref="8a3636fa-c6ec-4cb0-bc2a-b7143f2a4937(org.campagnelab.metaR)" />
  </languages>
  <imports>
    <import index="9nc5" ref="r:d1a256e6-591a-459f-809c-7fc9df45e4d5(org.campagnelab.mps.XChart.types.roots)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="ecc862c9-5ab5-42ef-8703-2039019fb338" name="org.campagnelab.metar.models">
      <concept id="5124039371744206219" name="org.campagnelab.metar.models.structure.BinaryExpression" flags="ng" index="10Wucy">
        <child id="5124039371744206221" name="right" index="10Wuc$" />
        <child id="5124039371744206220" name="left" index="10Wuc_" />
      </concept>
      <concept id="5124039371744206222" name="org.campagnelab.metar.models.structure.GroupFormula" flags="ng" index="10WucB">
        <child id="5124039371744206223" name="groupExpression" index="10WucA" />
      </concept>
      <concept id="5124039371744206225" name="org.campagnelab.metar.models.structure.GroupUsageRef" flags="ng" index="10WucS">
        <reference id="5124039371744206226" name="groupUsage" index="10WucV" />
      </concept>
      <concept id="5124039371744206229" name="org.campagnelab.metar.models.structure.Plus" flags="ng" index="10WucW" />
      <concept id="5124039371744206228" name="org.campagnelab.metar.models.structure.NoIntercept" flags="ng" index="10WucX" />
      <concept id="5124039371743719809" name="org.campagnelab.metar.models.structure.ContrastsBinaryOperator" flags="ng" index="10Y$WC">
        <child id="5124039371743719811" name="right" index="10Y$WE" />
        <child id="5124039371743719810" name="left" index="10Y$WF" />
      </concept>
      <concept id="5124039371743719808" name="org.campagnelab.metar.models.structure.ContrastMinus" flags="ng" index="10Y$WD" />
      <concept id="5124039371743719813" name="org.campagnelab.metar.models.structure.GroupRef" flags="ng" index="10Y$WG">
        <reference id="5124039371743719814" name="group" index="10Y$WJ" />
      </concept>
      <concept id="5124039371746754735" name="org.campagnelab.metar.models.structure.IStatTest" flags="ng" index="1f2fS6">
        <child id="5124039371746755079" name="modelFormula" index="1f2fMI" />
        <child id="5124039371746755432" name="contrasts" index="1f2fR1" />
      </concept>
    </language>
    <language id="049ed9e7-0f0d-4814-a373-a4b21e15b59e" name="org.campagnelab.metar.limma">
      <concept id="8725455673819557579" name="org.campagnelab.metar.limma.structure.LimmaVoom" flags="ng" index="3cumlZ">
        <child id="8725455673819568087" name="countsTable" index="3cupLz" />
        <child id="8725455673819577719" name="destinationTable" index="3curr3" />
      </concept>
    </language>
    <language id="5d6bde84-4ce4-4eb5-a37e-25a5edd55129" name="org.campagnelab.metar.tables">
      <concept id="5703306641526703227" name="org.campagnelab.metar.tables.structure.SelectGroupUsage" flags="ng" index="2tndn">
        <reference id="5703306641526703277" name="usage" index="2tne1" />
      </concept>
      <concept id="5703306641526702642" name="org.campagnelab.metar.tables.structure.HeatmapAnnotations" flags="ng" index="2tnku">
        <property id="6583618001731900870" name="clusterColumns" index="2Lhm1Q" />
        <property id="6583618001731900686" name="clusterRows" index="2Lhm2Y" />
        <child id="5703306641526703109" name="usages" index="2tncD" />
        <child id="6583618001716896682" name="scaling" index="2Mr_oq" />
      </concept>
      <concept id="4451133196879828915" name="org.campagnelab.metar.tables.structure.TableRef" flags="ng" index="afgQW">
        <reference id="4451133196879830023" name="table" index="afgo8" />
      </concept>
      <concept id="3929971219796704543" name="org.campagnelab.metar.tables.structure.OutputFile" flags="ng" index="2jXUOv">
        <property id="3929971219796704769" name="path" index="2jXUS1" />
      </concept>
      <concept id="2133144034279815880" name="org.campagnelab.metar.tables.structure.SelectMultipleGroups" flags="ng" index="2spSBU">
        <child id="2133144034279816044" name="groupSelections" index="2spSxu" />
      </concept>
      <concept id="8031339867720116703" name="org.campagnelab.metar.tables.structure.UsageTypeRef" flags="ng" index="2y_Ijh">
        <reference id="8031339867720116704" name="usage" index="2y_IjI" />
      </concept>
      <concept id="6106414325997850090" name="org.campagnelab.metar.tables.structure.FutureTableCreator" flags="ng" index="2$MLEj">
        <property id="9080041854829670092" name="inputChanged" index="8NYsT" />
      </concept>
      <concept id="8016431400517087678" name="org.campagnelab.metar.tables.structure.UsageType" flags="ng" index="2_mUhs" />
      <concept id="6583618001716898910" name="org.campagnelab.metar.tables.structure.ScaleByRow" flags="ng" index="2Mr_BI" />
      <concept id="7783277237108572280" name="org.campagnelab.metar.tables.structure.FilterWithExpression" flags="ng" index="2Qf$4g">
        <child id="2826789978062873521" name="filter" index="QaakN" />
      </concept>
      <concept id="8962032619593737384" name="org.campagnelab.metar.tables.structure.Statement" flags="ng" index="S1EQ7">
        <property id="8962032619593737385" name="id" index="S1EQ6" />
      </concept>
      <concept id="8962032619593737380" name="org.campagnelab.metar.tables.structure.Analysis" flags="ng" index="S1EQb">
        <property id="2742007948298959018" name="trycatch_enabled" index="2BDq$p" />
        <child id="8962032619593737383" name="statements" index="S1EQ8" />
      </concept>
      <concept id="8962032619593737377" name="org.campagnelab.metar.tables.structure.EmptyLine" flags="ng" index="S1EQe" />
      <concept id="8013388156563171421" name="org.campagnelab.metar.tables.structure.PDF" flags="ng" index="Ss6Tf" />
      <concept id="8013388156563115186" name="org.campagnelab.metar.tables.structure.Render" flags="ng" index="SsgEw">
        <property id="7501650211371753390" name="height" index="165MyL" />
        <property id="7501650211371751513" name="width" index="165MX6" />
        <reference id="8013388156563171415" name="plot" index="Ss6T5" />
        <child id="3929971219796733619" name="path" index="2jX3UN" />
        <child id="8013388156563171423" name="output" index="Ss6Td" />
      </concept>
      <concept id="8962032619582305406" name="org.campagnelab.metar.tables.structure.StatementList" flags="ng" index="ZXjPh">
        <child id="8962032619582305407" name="transformations" index="ZXjPg" />
      </concept>
      <concept id="5052319772298911308" name="org.campagnelab.metar.tables.structure.ExpressionWrapper" flags="ng" index="31$ALs">
        <child id="5052319772298911309" name="expression" index="31$ALt" />
      </concept>
      <concept id="8081253674570416584" name="org.campagnelab.metar.tables.structure.ColumnValue" flags="ng" index="3$Gm2I">
        <reference id="8081253674570416585" name="column" index="3$Gm2J" />
      </concept>
      <concept id="8459500803719374384" name="org.campagnelab.metar.tables.structure.Plot" flags="ng" index="1FHg$p">
        <property id="8962032619586498917" name="width" index="ZHjxa" />
        <property id="8962032619586499111" name="height" index="ZHjG8" />
        <property id="4166618652723451261" name="id" index="3ZMXzF" />
      </concept>
      <concept id="8459500803719286639" name="org.campagnelab.metar.tables.structure.Heatmap" flags="ng" index="1FHY16">
        <child id="5703306641526697040" name="annotations" index="2thHW" />
        <child id="4451133196879916916" name="table" index="af7lV" />
        <child id="8459500803719374387" name="plot" index="1FHg$q" />
        <child id="8459500803719286733" name="dataSelection" index="1FHY3$" />
      </concept>
      <concept id="3402264987261651661" name="org.campagnelab.metar.tables.structure.ImportTable" flags="ng" index="3MjoWR">
        <reference id="3402264987261692715" name="table" index="3Mj2Vh" />
        <child id="3402264987261651716" name="future" index="3MjoVY" />
      </concept>
      <concept id="3402264987259919045" name="org.campagnelab.metar.tables.structure.FutureTable" flags="ng" index="3MlLWZ">
        <reference id="3402264987259919103" name="table" index="3MlLW5" />
        <child id="4166618652720259019" name="myOwnTable" index="3WeD9t" />
      </concept>
      <concept id="3402264987259164676" name="org.campagnelab.metar.tables.structure.JoinTables" flags="ng" index="3MoTRY">
        <child id="3402264987262235696" name="byKeySelection" index="3MHf7a" />
      </concept>
      <concept id="3402264987259164677" name="org.campagnelab.metar.tables.structure.TableTransformation" flags="ng" index="3MoTRZ">
        <child id="3402264987259853630" name="outputTable" index="3Mq1V4" />
        <child id="3402264987259798258" name="inputTables" index="3Mqss8" />
      </concept>
      <concept id="3402264987258987827" name="org.campagnelab.metar.tables.structure.Table" flags="ng" index="3Mpm39">
        <property id="578023650349875540" name="pathToResolve" index="26T8KA" />
      </concept>
      <concept id="3402264987259789239" name="org.campagnelab.metar.tables.structure.FutureTableRef" flags="ng" index="3MqhDd">
        <reference id="3402264987259798245" name="table" index="3Mqssv" />
      </concept>
      <concept id="3402264987265829888" name="org.campagnelab.metar.tables.structure.ColumnGroupContainer" flags="ng" index="3MzsBU">
        <child id="8031339867719794365" name="usages" index="2yEZeN" />
        <child id="3402264987265829889" name="groups" index="3MzsBV" />
      </concept>
      <concept id="3402264987265829895" name="org.campagnelab.metar.tables.structure.ColumnGroupReference" flags="ng" index="3MzsBX">
        <reference id="3402264987265829896" name="columnGroup" index="3MzsBM" />
      </concept>
      <concept id="3402264987265829883" name="org.campagnelab.metar.tables.structure.ColumnGroup" flags="ng" index="3MzsS1">
        <child id="8031339867720116700" name="usesRefs" index="2y_Iji" />
      </concept>
      <concept id="3402264987265829804" name="org.campagnelab.metar.tables.structure.ColumnAnnotation" flags="ng" index="3MzsTm">
        <child id="3402264987265831176" name="groups" index="3MztjM" />
      </concept>
      <concept id="3402264987266660978" name="org.campagnelab.metar.tables.structure.SelectByGroup" flags="ng" index="3MW7Y8">
        <reference id="3402264987266660979" name="byGroup" index="3MW7Y9" />
      </concept>
      <concept id="4166618652716277483" name="org.campagnelab.metar.tables.structure.SubSetTableRows" flags="ng" index="3WuldX">
        <child id="4451133196880140419" name="table" index="aecac" />
        <child id="4166618652718302640" name="destination" index="3W64wA" />
        <child id="4166618652716281037" name="rowFilter" index="3Wum5r" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="5ec1cd3d-0a50-4049-a8fa-ae768d7baa25" name="org.campagnelab.mps.XChart">
      <concept id="2202909375770430359" name="org.campagnelab.mps.XChart.structure.DataFile" flags="ng" index="31JGnK">
        <property id="2202909375770434162" name="path" index="31JHgl" />
        <child id="2202909375770434164" name="columns" index="31JHgj" />
      </concept>
      <concept id="2202909375770430354" name="org.campagnelab.mps.XChart.structure.DelimitedFile" flags="ng" index="31JGnP">
        <property id="2202909375770898234" name="delimitor" index="31Cu5t" />
      </concept>
      <concept id="2202909375770434159" name="org.campagnelab.mps.XChart.structure.Column" flags="ng" index="31JHg8">
        <reference id="3328299660867197501" name="type" index="1YeEjl" />
      </concept>
    </language>
    <language id="43f31864-fc67-43f5-873e-ab79cc279a2d" name="org.campagnelab.styles">
      <concept id="2742007948273075795" name="org.campagnelab.styles.structure.DrawBorder" flags="ng" index="2A4dvw" />
      <concept id="5397636476160524896" name="org.campagnelab.styles.structure.UseStyle" flags="ng" index="2YPgeA">
        <reference id="3501083140137599858" name="useStyle" index="L_9Jz" />
      </concept>
      <concept id="5397636476160560846" name="org.campagnelab.styles.structure.StyleContainer" flags="ng" index="2YPoW8">
        <child id="5397636476160567172" name="elements" index="2YPqp2" />
      </concept>
    </language>
  </registry>
  <node concept="3Mpm39" id="7v7wkV7eE2c">
    <property role="31Cu5t" value="&#9;" />
    <property role="31JHgl" value="/Users/fac2003/MPSProjects/git/metar/data/GSE59364_DC_all.csv" />
    <property role="TrG5h" value="GSE59364_DC_all.csv" />
    <property role="26T8KA" value="/Users/fac2003/MPSProjects/git/metar/data/GSE59364_DC_all.csv" />
    <node concept="31JHg8" id="7v7wkV7eE32" role="31JHgj">
      <property role="TrG5h" value="gene" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
      <node concept="3MzsTm" id="7v7wkV7eHsA" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eNyB" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eE57" resolve="ID" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE33" role="31JHgj">
      <property role="TrG5h" value="mRNA len" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eHsH" role="lGtFl" />
    </node>
    <node concept="31JHg8" id="7v7wkV7eE34" role="31JHgj">
      <property role="TrG5h" value="genomic span" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="7v7wkV7eE35" role="31JHgj">
      <property role="TrG5h" value="DC_normal" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="7v7wkV7eE36" role="31JHgj">
      <property role="TrG5h" value="DC_treated" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
    </node>
    <node concept="31JHg8" id="7v7wkV7eE37" role="31JHgj">
      <property role="TrG5h" value="DC0904" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eNyQ" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eNzv" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eObZ" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE38" role="31JHgj">
      <property role="TrG5h" value="DC0907" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO9I" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO9H" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOc4" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE39" role="31JHgj">
      <property role="TrG5h" value="DCLPS0910" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eNzx" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eN$a" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOc5" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3a" role="31JHgj">
      <property role="TrG5h" value="DCLPS0913" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO7Y" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO9r" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOc6" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3b" role="31JHgj">
      <property role="TrG5h" value="A_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO80" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO7Z" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOc7" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3c" role="31JHgj">
      <property role="TrG5h" value="A_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO82" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO9u" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOc8" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3d" role="31JHgj">
      <property role="TrG5h" value="B_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO84" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO83" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOc9" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3e" role="31JHgj">
      <property role="TrG5h" value="B_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO86" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO9x" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOca" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3f" role="31JHgj">
      <property role="TrG5h" value="C_DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO88" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO87" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOcb" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3g" role="31JHgj">
      <property role="TrG5h" value="C_DC_LPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO8a" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO9$" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOcc" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3h" role="31JHgj">
      <property role="TrG5h" value="C2DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO8c" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO8b" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOcd" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3i" role="31JHgj">
      <property role="TrG5h" value="C2DCLPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO8e" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO9B" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOce" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3j" role="31JHgj">
      <property role="TrG5h" value="C3DC" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO8g" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO8f" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOcf" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
    <node concept="31JHg8" id="7v7wkV7eE3k" role="31JHgj">
      <property role="TrG5h" value="C3DCLPS" />
      <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
      <node concept="3MzsTm" id="7v7wkV7eO8i" role="lGtFl">
        <node concept="3MzsBX" id="7v7wkV7eO9E" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
        </node>
        <node concept="3MzsBX" id="7v7wkV7eOcg" role="3MztjM">
          <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3MzsBU" id="7v7wkV7eE56">
    <node concept="2_mUhs" id="7v7wkV7eNyK" role="2yEZeN">
      <property role="TrG5h" value="LPS_Treatment" />
    </node>
    <node concept="2_mUhs" id="7v7wkV7f583" role="2yEZeN">
      <property role="TrG5h" value="heatmap" />
    </node>
    <node concept="3MzsS1" id="7v7wkV7eObP" role="3MzsBV">
      <property role="TrG5h" value="counts" />
    </node>
    <node concept="3MzsS1" id="7v7wkV7eNyG" role="3MzsBV">
      <property role="TrG5h" value="LPS=no" />
      <node concept="2y_Ijh" id="7v7wkV7eNyM" role="2y_Iji">
        <ref role="2y_IjI" node="7v7wkV7eNyK" resolve="LPS_Treatment" />
      </node>
      <node concept="2y_Ijh" id="7v7wkV7f589" role="2y_Iji">
        <ref role="2y_IjI" node="7v7wkV7f583" resolve="heatmap" />
      </node>
    </node>
    <node concept="3MzsS1" id="7v7wkV7eNyD" role="3MzsBV">
      <property role="TrG5h" value="LPS=yes" />
      <node concept="2y_Ijh" id="7v7wkV7eNyO" role="2y_Iji">
        <ref role="2y_IjI" node="7v7wkV7eNyK" resolve="LPS_Treatment" />
      </node>
      <node concept="2y_Ijh" id="7v7wkV7f58g" role="2y_Iji">
        <ref role="2y_IjI" node="7v7wkV7f583" resolve="heatmap" />
      </node>
    </node>
    <node concept="3MzsS1" id="7v7wkV7eE57" role="3MzsBV">
      <property role="TrG5h" value="ID" />
    </node>
  </node>
  <node concept="S1EQb" id="7v7wkV7eOap">
    <property role="2BDq$p" value="true" />
    <property role="TrG5h" value="Limma diff exp" />
    <node concept="ZXjPh" id="7v7wkV7eOaq" role="S1EQ8">
      <property role="S1EQ6" value="MJBRTXANHF" />
      <node concept="S1EQe" id="7v7wkV7eOar" role="ZXjPg">
        <property role="S1EQ6" value="JBSBBPLWWV" />
      </node>
      <node concept="3MjoWR" id="7v7wkV7eOa$" role="ZXjPg">
        <property role="S1EQ6" value="DWQDUMBGPW" />
        <ref role="3Mj2Vh" node="7v7wkV7eE2c" resolve="GSE59364_DC_all.csv" />
        <node concept="3MlLWZ" id="7v7wkV7eOaD" role="3MjoVY">
          <property role="TrG5h" value="GSE59364_DC_all.csv" />
          <ref role="3MlLW5" node="7v7wkV7eE2c" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="3cumlZ" id="7v7wkV7eOaL" role="ZXjPg">
        <property role="S1EQ6" value="XVCGTXMENE" />
        <property role="8NYsT" value="false" />
        <node concept="3MlLWZ" id="7v7wkV7eOaN" role="3curr3">
          <property role="TrG5h" value="stats" />
          <ref role="3MlLW5" node="7v7wkV7eOaO" resolve="stats" />
          <node concept="3Mpm39" id="7v7wkV7eOaO" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="stats" />
            <node concept="31JHg8" id="7v7wkV7eOb9" role="31JHgj">
              <property role="TrG5h" value="row.names" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="7v7wkV7eOba" role="lGtFl" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eObb" role="31JHgj">
              <property role="TrG5h" value="genes" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="7v7wkV7eObc" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7eObd" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eE57" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7eObe" role="31JHgj">
              <property role="TrG5h" value="logFC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eObf" role="31JHgj">
              <property role="TrG5h" value="AveExpr" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eObg" role="31JHgj">
              <property role="TrG5h" value="t" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eObh" role="31JHgj">
              <property role="TrG5h" value="P.Value" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eObi" role="31JHgj">
              <property role="TrG5h" value="adj.P.Val" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eObj" role="31JHgj">
              <property role="TrG5h" value="B" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
          </node>
        </node>
        <node concept="10WucB" id="7v7wkV7eOaP" role="1f2fMI">
          <node concept="10WucW" id="7v7wkV7eYz5" role="10WucA">
            <node concept="10WucS" id="7v7wkV7eYzc" role="10Wuc$">
              <ref role="10WucV" node="7v7wkV7eNyK" resolve="LPS_Treatment" />
            </node>
            <node concept="10WucX" id="7v7wkV7eOaQ" role="10Wuc_" />
          </node>
        </node>
        <node concept="10Y$WD" id="7v7wkV7eYzj" role="1f2fR1">
          <node concept="10Y$WG" id="7v7wkV7eYzq" role="10Y$WE">
            <ref role="10Y$WJ" node="7v7wkV7eNyD" resolve="LPS=yes" />
          </node>
          <node concept="10Y$WG" id="7v7wkV7eYzf" role="10Y$WF">
            <ref role="10Y$WJ" node="7v7wkV7eNyG" resolve="LPS=no" />
          </node>
        </node>
        <node concept="afgQW" id="7v7wkV7eOb6" role="3cupLz">
          <ref role="afgo8" node="7v7wkV7eE2c" resolve="GSE59364_DC_all.csv" />
        </node>
      </node>
      <node concept="3WuldX" id="7v7wkV7eYzt" role="ZXjPg">
        <property role="S1EQ6" value="IYSCLDNEJB" />
        <property role="8NYsT" value="false" />
        <node concept="3MlLWZ" id="7v7wkV7eYzv" role="3W64wA">
          <property role="TrG5h" value="1% FDR" />
          <ref role="3MlLW5" node="7v7wkV7eYzw" resolve="1% FDR" />
          <node concept="3Mpm39" id="7v7wkV7eYzw" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="1% FDR" />
            <node concept="31JHg8" id="7v7wkV7eY$7" role="31JHgj">
              <property role="TrG5h" value="row.names" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="7v7wkV7eY$9" role="lGtFl" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eY$a" role="31JHgj">
              <property role="TrG5h" value="genes" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="7v7wkV7eY$d" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7eY$e" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eE57" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7eY$f" role="31JHgj">
              <property role="TrG5h" value="logFC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eY$g" role="31JHgj">
              <property role="TrG5h" value="AveExpr" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eY$h" role="31JHgj">
              <property role="TrG5h" value="t" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eY$i" role="31JHgj">
              <property role="TrG5h" value="P.Value" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eY$j" role="31JHgj">
              <property role="TrG5h" value="adj.P.Val" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7eY$k" role="31JHgj">
              <property role="TrG5h" value="B" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
          </node>
        </node>
        <node concept="afgQW" id="7v7wkV7eY$4" role="aecac">
          <ref role="afgo8" node="7v7wkV7eOaO" resolve="stats" />
        </node>
        <node concept="2Qf$4g" id="7v7wkV7eY$K" role="3Wum5r">
          <node concept="31$ALs" id="7v7wkV7eY$M" role="QaakN">
            <node concept="2dkUwp" id="7v7wkV7f402" role="31$ALt">
              <node concept="3b6qkQ" id="7v7wkV7f44_" role="3uHU7w">
                <property role="$nhwW" value="0.001" />
              </node>
              <node concept="3$Gm2I" id="7v7wkV7f34c" role="3uHU7B">
                <ref role="3$Gm2J" node="7v7wkV7eObi" resolve="adj.P.Val" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="S1EQe" id="7v7wkV7f4V3" role="ZXjPg">
        <property role="S1EQ6" value="MVQMIOVLXY" />
      </node>
      <node concept="3MoTRY" id="7v7wkV7f4Wy" role="ZXjPg">
        <property role="S1EQ6" value="MLPJAYBQTW" />
        <property role="8NYsT" value="false" />
        <node concept="3MlLWZ" id="7v7wkV7f4WA" role="3Mq1V4">
          <property role="TrG5h" value="joined" />
          <ref role="3MlLW5" node="7v7wkV7f4WB" resolve="joined" />
          <node concept="3Mpm39" id="7v7wkV7f4WB" role="3WeD9t">
            <property role="31Cu5t" value="&#9;" />
            <property role="TrG5h" value="joined" />
            <node concept="31JHg8" id="7v7wkV7f4Zj" role="31JHgj">
              <property role="TrG5h" value="C3DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Zn" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Zo" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Zp" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4YK" role="31JHgj">
              <property role="TrG5h" value="C_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4YO" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4YP" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4YQ" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4YY" role="31JHgj">
              <property role="TrG5h" value="C2DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Z2" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Z3" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Z4" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4XZ" role="31JHgj">
              <property role="TrG5h" value="DC0907" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Y3" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Y4" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Y5" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4YR" role="31JHgj">
              <property role="TrG5h" value="C_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4YV" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4YW" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4YX" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4XP" role="31JHgj">
              <property role="TrG5h" value="genomic span" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Z5" role="31JHgj">
              <property role="TrG5h" value="C2DCLPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Z9" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Za" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Zb" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Zz" role="31JHgj">
              <property role="TrG5h" value="AveExpr" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Yr" role="31JHgj">
              <property role="TrG5h" value="A_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Yv" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Yw" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Yx" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Yy" role="31JHgj">
              <property role="TrG5h" value="B_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4YA" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4YB" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4YC" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Y6" role="31JHgj">
              <property role="TrG5h" value="DCLPS0910" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Ya" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Yb" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Yc" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4XQ" role="31JHgj">
              <property role="TrG5h" value="DC_normal" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Zc" role="31JHgj">
              <property role="TrG5h" value="C3DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Zg" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Zh" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Zi" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Yk" role="31JHgj">
              <property role="TrG5h" value="A_DC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Yo" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Yp" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Yq" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4XR" role="31JHgj">
              <property role="TrG5h" value="DC_treated" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Zt" role="31JHgj">
              <property role="TrG5h" value="genes" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="7v7wkV7f4Zw" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Zx" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eE57" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4ZA" role="31JHgj">
              <property role="TrG5h" value="adj.P.Val" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Yd" role="31JHgj">
              <property role="TrG5h" value="DCLPS0913" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4Yh" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4Yi" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4Yj" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4YD" role="31JHgj">
              <property role="TrG5h" value="B_DC_LPS" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4YH" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4YI" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyD" resolve="LPS=yes" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4YJ" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Z$" role="31JHgj">
              <property role="TrG5h" value="t" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Zy" role="31JHgj">
              <property role="TrG5h" value="logFC" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Z_" role="31JHgj">
              <property role="TrG5h" value="P.Value" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4XS" role="31JHgj">
              <property role="TrG5h" value="DC0904" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4XW" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4XX" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eNyG" resolve="LPS=no" />
                </node>
                <node concept="3MzsBX" id="7v7wkV7f4XY" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eObP" resolve="counts" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4ZB" role="31JHgj">
              <property role="TrG5h" value="B" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4XM" role="31JHgj">
              <property role="TrG5h" value="mRNA len" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_7G" resolve="Numeric" />
              <node concept="3MzsTm" id="7v7wkV7f4XO" role="lGtFl" />
            </node>
            <node concept="31JHg8" id="7v7wkV7f4XH" role="31JHgj">
              <property role="TrG5h" value="gene" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="7v7wkV7f4XK" role="lGtFl">
                <node concept="3MzsBX" id="7v7wkV7f4XL" role="3MztjM">
                  <ref role="3MzsBM" node="7v7wkV7eE57" resolve="ID" />
                </node>
              </node>
            </node>
            <node concept="31JHg8" id="7v7wkV7f4Zq" role="31JHgj">
              <property role="TrG5h" value="row.names" />
              <ref role="1YeEjl" to="9nc5:1ID5TXdv_9L" resolve="String" />
              <node concept="3MzsTm" id="7v7wkV7f4Zs" role="lGtFl" />
            </node>
          </node>
        </node>
        <node concept="3MW7Y8" id="7v7wkV7f4XE" role="3MHf7a">
          <ref role="3MW7Y9" node="7v7wkV7eE57" resolve="ID" />
        </node>
        <node concept="3MqhDd" id="7v7wkV7f4Xw" role="3Mqss8">
          <ref role="3Mqssv" node="7v7wkV7eOaD" resolve="GSE59364_DC_all.csv" />
        </node>
        <node concept="3MqhDd" id="7v7wkV7f4XA" role="3Mqss8">
          <ref role="3Mqssv" node="7v7wkV7eYzv" resolve="1% FDR" />
        </node>
      </node>
      <node concept="S1EQe" id="7v7wkV7f55W" role="ZXjPg">
        <property role="S1EQ6" value="CBIMLWFRVB" />
      </node>
      <node concept="1FHY16" id="7v7wkV7f53E" role="ZXjPg">
        <property role="S1EQ6" value="CKBGDWPEUW" />
        <ref role="L_9Jz" node="7v7wkV7fQ$p" resolve="DefaultStyle" />
        <node concept="1FHg$p" id="7v7wkV7f53G" role="1FHg$q">
          <property role="ZHjxa" value="600" />
          <property role="ZHjG8" value="800" />
          <property role="3ZMXzF" value="1" />
          <property role="TrG5h" value="heatmap" />
        </node>
        <node concept="afgQW" id="7v7wkV7f55M" role="af7lV">
          <ref role="afgo8" node="7v7wkV7f4WB" resolve="joined" />
        </node>
        <node concept="2spSBU" id="7v7wkV7f55P" role="1FHY3$">
          <node concept="3MW7Y8" id="7v7wkV7f55Q" role="2spSxu">
            <ref role="3MW7Y9" node="7v7wkV7eNyG" resolve="LPS=no" />
          </node>
          <node concept="3MW7Y8" id="7v7wkV7f55T" role="2spSxu">
            <ref role="3MW7Y9" node="7v7wkV7eNyD" resolve="LPS=yes" />
          </node>
        </node>
        <node concept="2tnku" id="7v7wkV7fAGs" role="2thHW">
          <property role="2Lhm2Y" value="true" />
          <property role="2Lhm1Q" value="true" />
          <node concept="2tndn" id="7v7wkV7fAGu" role="2tncD">
            <ref role="2tne1" node="7v7wkV7eNyK" resolve="LPS_Treatment" />
          </node>
          <node concept="2Mr_BI" id="7v7wkV7fCij" role="2Mr_oq" />
        </node>
      </node>
      <node concept="SsgEw" id="7v7wkV7fH7_" role="ZXjPg">
        <property role="S1EQ6" value="UMJSHOQVRU" />
        <property role="165MX6" value="6" />
        <property role="165MyL" value="8" />
        <ref role="Ss6T5" node="7v7wkV7f53G" resolve="heatmap" />
        <node concept="2jXUOv" id="7v7wkV7fH7B" role="2jX3UN">
          <property role="2jXUS1" value="heatmap-clustered.pdf" />
        </node>
        <node concept="Ss6Tf" id="7v7wkV7fH9S" role="Ss6Td" />
      </node>
      <node concept="S1EQe" id="7v7wkV7fAEk" role="ZXjPg">
        <property role="S1EQ6" value="QIXVBNTOWW" />
      </node>
    </node>
  </node>
  <node concept="2YPoW8" id="7v7wkV7fQ$p">
    <property role="TrG5h" value="DefaultStyle" />
    <node concept="2A4dvw" id="2ZuVrVSIEW7" role="2YPqp2" />
  </node>
</model>

